#include "twit.h"

VALUE rb_mTwit;

void
Init_twit(void)
{
  rb_mTwit = rb_define_module("Twit");
}
