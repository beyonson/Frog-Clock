#include <stdint.h>
#include "startup.h"

__attribute__((section(".vector_table")))

const vector_table_t vectors[] = {
{.stack_top = &_stack_ptr},
Reset_Handler,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
SysTick_Handler

};
