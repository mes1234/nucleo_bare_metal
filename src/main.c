#include <stdint.h>
#include "stm32f10x.h";

// Define GPIOB pin mappings for our LED and button.
#define BUTTON_PIN (1)
#define LED_PIN    (3)
/* Main program. */
int main(void) {
  int val = 0;
  while (1) {
    val += 1;
  }
}