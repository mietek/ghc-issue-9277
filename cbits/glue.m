#import "glue.h"


BOOL is_main_thread()
{
	return [NSThread isMainThread];
}
