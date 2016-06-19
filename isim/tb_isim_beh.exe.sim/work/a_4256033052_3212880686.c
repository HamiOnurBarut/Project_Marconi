/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Mehmet/Desktop/2014-2015-Spring/EEE 495/lab4/ADC.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4256033052_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(26, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4200);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4256033052_3212880686_p_1(char *t0)
{
    char t11[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    int t13;
    unsigned char t14;
    int t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4216);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 == 0);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 < 17);
    if (t2 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 > 16);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = (unsigned char)0;

LAB17:    if (t2 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 20);
    if (t2 != 0)
        goto LAB18;

LAB19:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 4360);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 7228U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t4 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t11, t5, 8);
    t7 = (t0 + 4424);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 4488);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 1;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t13 = *((int *)t4);
    t6 = (t13 > 4);
    if (t6 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t13 = (t5 + 1);
    t1 = (t0 + 4488);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t13;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB10:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1192U);
    t7 = *((char **)t1);
    t14 = *((unsigned char *)t7);
    t1 = (t0 + 1992U);
    t8 = *((char **)t1);
    t15 = *((int *)t8);
    t16 = (16 - t15);
    t17 = (t16 - 11);
    t18 = (t17 * -1);
    t19 = (1 * t18);
    t20 = (0U + t19);
    t1 = (t0 + 4552);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t21 = *((char **)t12);
    *((unsigned char *)t21) = t14;
    xsi_driver_first_trans_delta(t1, t20, 1, 0LL);
    goto LAB11;

LAB13:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1992U);
    t7 = *((char **)t1);
    t15 = *((int *)t7);
    t16 = (t15 + 1);
    t1 = (t0 + 4488);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    *((int *)t12) = t16;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 4360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t18 = (11 - 11);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t1 = (t3 + t20);
    t4 = (t0 + 4616);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB6;

LAB15:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t13 = *((int *)t4);
    t14 = (t13 < 20);
    t2 = t14;
    goto LAB17;

LAB18:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4488);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}


extern void work_a_4256033052_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4256033052_3212880686_p_0,(void *)work_a_4256033052_3212880686_p_1};
	xsi_register_didat("work_a_4256033052_3212880686", "isim/tb_isim_beh.exe.sim/work/a_4256033052_3212880686.didat");
	xsi_register_executes(pe);
}
