/*
 * pi minimal kernel module - /dev version
 *
 * Mathew Varughese <mav120@pitt.edu>
 *
 */

#include <linux/fs.h>
#include <linux/init.h>
#include <linux/miscdevice.h>
#include <linux/module.h>

#include <asm/uaccess.h>

#include "pi.h"

/*
 * pi_read is the function called when a process calls read() on
 * /dev/pi.  It writes specified digits of pi to the buffer passed in the
 * read() call.
 */
static ssize_t pi_read(struct file * file, char * buf, size_t count, loff_t *ppos) {
	/* ppos is the current point in the file */
	int start_index = (int)*ppos;

	/* since our pi function requires n space where n is the last digit we need to find,
	   we need the total number of digits, and then copy the requested digits into user buffer
	*/
	int total_length = count + start_index;

	/* we add 4 to account for the algorithm's additional space of 4 digits required */
	char *pi_str = MALLOC(total_length + 4);

	/* we place the digits of pi into pi_str */
	pi(pi_str, total_length + 4);


	/* pi_str has digits from 0 to count, so we offset what we copy with pointer
	  arithmetic */
	if (copy_to_user(buf, pi_str + start_index, count))
		return -EINVAL;

	/* we return the number of digits we have wrote */
	FREE(pi_str);
	return count;
}

/*
 * The only file operation we care about is read.
 */

static const struct file_operations pi_fops = {
	.owner		= THIS_MODULE,
	.read		= pi_read,
};

static struct miscdevice pi_dev = {
	/*
	 * We don't care what minor number we end up with, so tell the
	 * kernel to just pick one.
	 */
	MISC_DYNAMIC_MINOR,
	/*
	 * Name ourselves /dev/pi_driver.
	 */
	"pi_driver",
	/*
	 * What functions to call when a program performs file
	 * operations on the device.
	 */
	&pi_fops
};

static int __init pi_init(void) {
	int ret;

	/*
	 * Create the "pi" device in the /sys/class/misc directory.
	 * Udev will automatically create the /dev/pi device using
	 * the default rules.
	 */
	ret = misc_register(&pi_dev);
	if (ret)
		printk(KERN_ERR
		       "Unable to register \"pi\" misc device\n");

	return ret;
}

module_init(pi_init);

static void __exit pi_exit(void) {
	misc_deregister(&pi_dev);
}

module_exit(pi_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Mathew Varughese <mav120@pitt.edu>");
MODULE_DESCRIPTION("\"Pi Driver!\" minimal module");
MODULE_VERSION("dev");
