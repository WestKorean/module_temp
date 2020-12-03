#include <linux/init.h>
#include <linux/module.h>

MODULE_LICENSE("Dual BSD/GPL");

static int hello_init(void)
{
    printk(KERN_ALERT "hello  world \n");
    printk(KERN_ALERT "module is up \n");
    return 0;
}

static void hello_exit(void)
{
    printk(KERN_ALERT "bye bye \n");
    printk(KERN_ALERT "module is down \n");
}

module_init(hello_init);
module_exit(hello_exit);
