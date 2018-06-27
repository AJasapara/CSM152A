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
static const char *ng0 = "E:/MMA/lab3-mam/clock.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {7U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {14U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {13U, 0U};
static unsigned int ng8[] = {3U, 0U};
static unsigned int ng9[] = {11U, 0U};
static unsigned int ng10[] = {192U, 0U};
static unsigned int ng11[] = {249U, 0U};
static unsigned int ng12[] = {164U, 0U};
static unsigned int ng13[] = {176U, 0U};
static unsigned int ng14[] = {4U, 0U};
static unsigned int ng15[] = {153U, 0U};
static unsigned int ng16[] = {5U, 0U};
static unsigned int ng17[] = {146U, 0U};
static unsigned int ng18[] = {6U, 0U};
static unsigned int ng19[] = {130U, 0U};
static unsigned int ng20[] = {248U, 0U};
static unsigned int ng21[] = {8U, 0U};
static unsigned int ng22[] = {128U, 0U};
static unsigned int ng23[] = {9U, 0U};
static unsigned int ng24[] = {144U, 0U};
static unsigned int ng25[] = {255U, 0U};
static int ng26[] = {0, 0};
static int ng27[] = {2, 0};
static int ng28[] = {3, 0};



static void Always_50_0(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 5408U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 6472);
    *((int *)t2) = 1;
    t3 = (t0 + 5440);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);

LAB5:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 4488);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB32:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t8 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng14)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng16)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng21)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng23)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB51;

LAB52:
LAB54:
LAB53:    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB55:    goto LAB2;

LAB7:    xsi_set_current_line(53, ng0);

LAB16:    xsi_set_current_line(54, ng0);
    t9 = (t0 + 1048U);
    t10 = *((char **)t9);
    t9 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t9, t10, 0, 0, 4, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4328);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 | t13);
    *((unsigned int *)t11) = t14;
    t7 = (t2 + 4);
    t9 = (t5 + 4);
    t10 = (t11 + 4);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t10) = t17;
    t18 = *((unsigned int *)t10);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB17;

LAB18:
LAB19:    t35 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t35, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 2, t5, 32);
    t7 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t7, t11, 0, 0, 2, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(59, ng0);

LAB20:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memcpy(t11, t4, 8);
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4328);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 | t13);
    *((unsigned int *)t11) = t14;
    t7 = (t2 + 4);
    t9 = (t5 + 4);
    t10 = (t11 + 4);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t10) = t17;
    t18 = *((unsigned int *)t10);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB21;

LAB22:
LAB23:    t35 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t35, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 2, t5, 32);
    t7 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t7, t11, 0, 0, 2, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(65, ng0);

LAB24:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4328);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 | t13);
    *((unsigned int *)t11) = t14;
    t7 = (t2 + 4);
    t9 = (t5 + 4);
    t10 = (t11 + 4);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t10) = t17;
    t18 = *((unsigned int *)t10);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB25;

LAB26:
LAB27:    t35 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t35, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 2, t5, 32);
    t7 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t7, t11, 0, 0, 2, 0LL);
    goto LAB15;

LAB13:    xsi_set_current_line(71, ng0);

LAB28:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    memcpy(t11, t4, 8);
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 4328);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 | t13);
    *((unsigned int *)t11) = t14;
    t7 = (t2 + 4);
    t9 = (t5 + 4);
    t10 = (t11 + 4);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t10) = t17;
    t18 = *((unsigned int *)t10);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB29;

LAB30:
LAB31:    t35 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t35, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 2, t5, 32);
    t7 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t7, t11, 0, 0, 2, 0LL);
    goto LAB15;

LAB17:    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t10);
    *((unsigned int *)t11) = (t20 | t21);
    t22 = (t2 + 4);
    t23 = (t5 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t2);
    t8 = (t26 & t25);
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t5);
    t30 = (t29 & t28);
    t31 = (~(t8));
    t32 = (~(t30));
    t33 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t33 & t31);
    t34 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t34 & t32);
    goto LAB19;

LAB21:    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t10);
    *((unsigned int *)t11) = (t20 | t21);
    t22 = (t2 + 4);
    t23 = (t5 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t2);
    t8 = (t26 & t25);
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t5);
    t30 = (t29 & t28);
    t31 = (~(t8));
    t32 = (~(t30));
    t33 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t33 & t31);
    t34 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t34 & t32);
    goto LAB23;

LAB25:    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t10);
    *((unsigned int *)t11) = (t20 | t21);
    t22 = (t2 + 4);
    t23 = (t5 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t2);
    t8 = (t26 & t25);
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t5);
    t30 = (t29 & t28);
    t31 = (~(t8));
    t32 = (~(t30));
    t33 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t33 & t31);
    t34 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t34 & t32);
    goto LAB27;

LAB29:    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t10);
    *((unsigned int *)t11) = (t20 | t21);
    t22 = (t2 + 4);
    t23 = (t5 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t2);
    t8 = (t26 & t25);
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t5);
    t30 = (t29 & t28);
    t31 = (~(t8));
    t32 = (~(t30));
    t33 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t33 & t31);
    t34 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t34 & t32);
    goto LAB31;

LAB33:    xsi_set_current_line(80, ng0);
    t7 = ((char*)((ng10)));
    t9 = (t0 + 4008);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 8);
    goto LAB55;

LAB35:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 4008);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB55;

LAB37:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng12)));
    t5 = (t0 + 4008);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB55;

LAB39:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng13)));
    t5 = (t0 + 4008);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB55;

LAB41:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng15)));
    t5 = (t0 + 4008);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB55;

LAB43:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng17)));
    t5 = (t0 + 4008);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB55;

LAB45:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng19)));
    t5 = (t0 + 4008);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB55;

LAB47:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng20)));
    t5 = (t0 + 4008);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB55;

LAB49:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng22)));
    t5 = (t0 + 4008);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB55;

LAB51:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng24)));
    t5 = (t0 + 4008);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB55;

}

static void Always_95_1(char *t0)
{
    char t6[8];
    char t33[8];
    char t57[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    int t56;
    int t58;

LAB0:    t1 = (t0 + 5656U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 6488);
    *((int *)t2) = 1;
    t3 = (t0 + 5688);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(95, ng0);

LAB5:    xsi_set_current_line(96, ng0);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 4328);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(96, ng0);

LAB13:    xsi_set_current_line(97, ng0);
    t28 = (t0 + 4168);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t0 + 2328U);
    t32 = *((char **)t31);
    memset(t33, 0, 8);
    t31 = (t30 + 4);
    t34 = (t32 + 4);
    t35 = *((unsigned int *)t30);
    t36 = *((unsigned int *)t32);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t31);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t31);
    t43 = *((unsigned int *)t34);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB15;

LAB14:    if (t44 != 0)
        goto LAB16;

LAB17:    t48 = (t33 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t33);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB18;

LAB19:
LAB20:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);

LAB22:    t2 = ((char*)((ng1)));
    t56 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t56 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng4)));
    t56 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t56 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng6)));
    t56 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t56 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng8)));
    t56 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t56 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB12;

LAB15:    *((unsigned int *)t33) = 1;
    goto LAB17;

LAB16:    t47 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(97, ng0);

LAB21:    xsi_set_current_line(98, ng0);
    t54 = ((char*)((ng1)));
    t55 = (t0 + 4328);
    xsi_vlogvar_assign_value(t55, t54, 0, 0, 4);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 4168);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 2);
    goto LAB20;

LAB23:    xsi_set_current_line(103, ng0);
    t4 = (t0 + 4328);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    memset(t33, 0, 8);
    t8 = (t33 + 4);
    t21 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t33) = t11;
    t12 = *((unsigned int *)t21);
    t13 = (t12 >> 0);
    t14 = (t13 & 1);
    *((unsigned int *)t8) = t14;
    memset(t6, 0, 8);
    t22 = (t33 + 4);
    t15 = *((unsigned int *)t22);
    t16 = (~(t15));
    t17 = *((unsigned int *)t33);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB35;

LAB33:    if (*((unsigned int *)t22) == 0)
        goto LAB32;

LAB34:    t28 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t28) = 1;

LAB35:    t29 = (t6 + 4);
    t30 = (t33 + 4);
    t20 = *((unsigned int *)t33);
    t23 = (~(t20));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB37;

LAB36:    t35 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t35 & 1U);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t36 & 1U);
    t31 = (t0 + 4328);
    t32 = (t0 + 4328);
    t34 = (t32 + 72U);
    t47 = *((char **)t34);
    t48 = ((char*)((ng26)));
    xsi_vlog_generic_convert_bit_index(t57, t47, 2, t48, 32, 1);
    t54 = (t57 + 4);
    t37 = *((unsigned int *)t54);
    t58 = (!(t37));
    if (t58 == 1)
        goto LAB38;

LAB39:    goto LAB31;

LAB25:    xsi_set_current_line(105, ng0);
    t4 = (t0 + 4328);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    memset(t33, 0, 8);
    t8 = (t33 + 4);
    t21 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t33) = t11;
    t12 = *((unsigned int *)t21);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t8) = t14;
    memset(t6, 0, 8);
    t22 = (t33 + 4);
    t15 = *((unsigned int *)t22);
    t16 = (~(t15));
    t17 = *((unsigned int *)t33);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB43;

LAB41:    if (*((unsigned int *)t22) == 0)
        goto LAB40;

LAB42:    t28 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t28) = 1;

LAB43:    t29 = (t6 + 4);
    t30 = (t33 + 4);
    t20 = *((unsigned int *)t33);
    t23 = (~(t20));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB45;

LAB44:    t35 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t35 & 1U);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t36 & 1U);
    t31 = (t0 + 4328);
    t32 = (t0 + 4328);
    t34 = (t32 + 72U);
    t47 = *((char **)t34);
    t48 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t57, t47, 2, t48, 32, 1);
    t54 = (t57 + 4);
    t37 = *((unsigned int *)t54);
    t58 = (!(t37));
    if (t58 == 1)
        goto LAB46;

LAB47:    goto LAB31;

LAB27:    xsi_set_current_line(107, ng0);
    t4 = (t0 + 4328);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    memset(t33, 0, 8);
    t8 = (t33 + 4);
    t21 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 2);
    t11 = (t10 & 1);
    *((unsigned int *)t33) = t11;
    t12 = *((unsigned int *)t21);
    t13 = (t12 >> 2);
    t14 = (t13 & 1);
    *((unsigned int *)t8) = t14;
    memset(t6, 0, 8);
    t22 = (t33 + 4);
    t15 = *((unsigned int *)t22);
    t16 = (~(t15));
    t17 = *((unsigned int *)t33);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB51;

LAB49:    if (*((unsigned int *)t22) == 0)
        goto LAB48;

LAB50:    t28 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t28) = 1;

LAB51:    t29 = (t6 + 4);
    t30 = (t33 + 4);
    t20 = *((unsigned int *)t33);
    t23 = (~(t20));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB53;

LAB52:    t35 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t35 & 1U);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t36 & 1U);
    t31 = (t0 + 4328);
    t32 = (t0 + 4328);
    t34 = (t32 + 72U);
    t47 = *((char **)t34);
    t48 = ((char*)((ng27)));
    xsi_vlog_generic_convert_bit_index(t57, t47, 2, t48, 32, 1);
    t54 = (t57 + 4);
    t37 = *((unsigned int *)t54);
    t58 = (!(t37));
    if (t58 == 1)
        goto LAB54;

LAB55:    goto LAB31;

LAB29:    xsi_set_current_line(109, ng0);
    t4 = (t0 + 4328);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    memset(t33, 0, 8);
    t8 = (t33 + 4);
    t21 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 3);
    t11 = (t10 & 1);
    *((unsigned int *)t33) = t11;
    t12 = *((unsigned int *)t21);
    t13 = (t12 >> 3);
    t14 = (t13 & 1);
    *((unsigned int *)t8) = t14;
    memset(t6, 0, 8);
    t22 = (t33 + 4);
    t15 = *((unsigned int *)t22);
    t16 = (~(t15));
    t17 = *((unsigned int *)t33);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB59;

LAB57:    if (*((unsigned int *)t22) == 0)
        goto LAB56;

LAB58:    t28 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t28) = 1;

LAB59:    t29 = (t6 + 4);
    t30 = (t33 + 4);
    t20 = *((unsigned int *)t33);
    t23 = (~(t20));
    *((unsigned int *)t6) = t23;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB61;

LAB60:    t35 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t35 & 1U);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t36 & 1U);
    t31 = (t0 + 4328);
    t32 = (t0 + 4328);
    t34 = (t32 + 72U);
    t47 = *((char **)t34);
    t48 = ((char*)((ng28)));
    xsi_vlog_generic_convert_bit_index(t57, t47, 2, t48, 32, 1);
    t54 = (t57 + 4);
    t37 = *((unsigned int *)t54);
    t58 = (!(t37));
    if (t58 == 1)
        goto LAB62;

LAB63:    goto LAB31;

LAB32:    *((unsigned int *)t6) = 1;
    goto LAB35;

LAB37:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t30);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t29);
    t27 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t26 | t27);
    goto LAB36;

LAB38:    xsi_vlogvar_assign_value(t31, t6, 0, *((unsigned int *)t57), 1);
    goto LAB39;

LAB40:    *((unsigned int *)t6) = 1;
    goto LAB43;

LAB45:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t30);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t29);
    t27 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t26 | t27);
    goto LAB44;

LAB46:    xsi_vlogvar_assign_value(t31, t6, 0, *((unsigned int *)t57), 1);
    goto LAB47;

LAB48:    *((unsigned int *)t6) = 1;
    goto LAB51;

LAB53:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t30);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t29);
    t27 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t26 | t27);
    goto LAB52;

LAB54:    xsi_vlogvar_assign_value(t31, t6, 0, *((unsigned int *)t57), 1);
    goto LAB55;

LAB56:    *((unsigned int *)t6) = 1;
    goto LAB59;

LAB61:    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t30);
    *((unsigned int *)t6) = (t24 | t25);
    t26 = *((unsigned int *)t29);
    t27 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t26 | t27);
    goto LAB60;

LAB62:    xsi_vlogvar_assign_value(t31, t6, 0, *((unsigned int *)t57), 1);
    goto LAB63;

}

static void Cont_116_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 5904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6600);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 6504);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_117_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 6152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6664);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 15U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 3);
    t18 = (t0 + 6520);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000001220920064_2964965119_init()
{
	static char *pe[] = {(void *)Always_50_0,(void *)Always_95_1,(void *)Cont_116_2,(void *)Cont_117_3};
	xsi_register_didat("work_m_00000000001220920064_2964965119", "isim/clock_timer_top_isim_beh.exe.sim/work/m_00000000001220920064_2964965119.didat");
	xsi_register_executes(pe);
}
