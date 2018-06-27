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
static const char *ng0 = "E:/MMA/lab3-mam/counter.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {9U, 0U};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {5U, 0U};
static int ng7[] = {2, 0};
static int ng8[] = {3, 0};



static void Always_32_0(char *t0)
{
    char t13[8];
    char t36[8];
    char t37[8];
    char t42[8];
    char t78[8];
    char t108[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    int t35;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    char *t107;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    char *t131;

LAB0:    t1 = (t0 + 4608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 5920);
    *((int *)t2) = 1;
    t3 = (t0 + 4640);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB99;

LAB100:
LAB101:    goto LAB2;

LAB6:    xsi_set_current_line(35, ng0);

LAB9:    xsi_set_current_line(37, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(44, ng0);

LAB13:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t11 = (t5 + 4);
    t12 = (t4 + 4);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t4);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t11);
    t22 = *((unsigned int *)t12);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB17;

LAB14:    if (t23 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t13) = 1;

LAB17:    t27 = (t13 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t13);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB18;

LAB19:
LAB20:    goto LAB12;

LAB16:    t26 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(46, ng0);
    t33 = (t0 + 1848U);
    t34 = *((char **)t33);

LAB21:    t33 = ((char*)((ng1)));
    t35 = xsi_vlog_unsigned_case_compare(t34, 2, t33, 32);
    if (t35 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng5)));
    t35 = xsi_vlog_unsigned_case_compare(t34, 2, t2, 32);
    if (t35 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng7)));
    t35 = xsi_vlog_unsigned_case_compare(t34, 2, t2, 32);
    if (t35 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng8)));
    t35 = xsi_vlog_unsigned_case_compare(t34, 2, t2, 32);
    if (t35 == 1)
        goto LAB28;

LAB29:
LAB30:    goto LAB20;

LAB22:    xsi_set_current_line(47, ng0);
    t38 = (t0 + 3208);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = ((char*)((ng3)));
    memset(t42, 0, 8);
    t43 = (t40 + 4);
    t44 = (t41 + 4);
    t45 = *((unsigned int *)t40);
    t46 = *((unsigned int *)t41);
    t47 = (t45 ^ t46);
    t48 = *((unsigned int *)t43);
    t49 = *((unsigned int *)t44);
    t50 = (t48 ^ t49);
    t51 = (t47 | t50);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t44);
    t54 = (t52 | t53);
    t55 = (~(t54));
    t56 = (t51 & t55);
    if (t56 != 0)
        goto LAB34;

LAB31:    if (t54 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t42) = 1;

LAB34:    memset(t37, 0, 8);
    t58 = (t42 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t58) != 0)
        goto LAB37;

LAB38:    t65 = (t37 + 4);
    t66 = *((unsigned int *)t37);
    t67 = *((unsigned int *)t65);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB39;

LAB40:    t70 = *((unsigned int *)t37);
    t71 = (~(t70));
    t72 = *((unsigned int *)t65);
    t73 = (t71 || t72);
    if (t73 > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t65) > 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t37) > 0)
        goto LAB45;

LAB46:    memcpy(t36, t78, 8);

LAB47:    t79 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t79, t36, 0, 0, 4, 0LL);
    goto LAB30;

LAB24:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 3368);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t11 = ((char*)((ng6)));
    memset(t37, 0, 8);
    t12 = (t5 + 4);
    t26 = (t11 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t11);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t12);
    t10 = *((unsigned int *)t26);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t26);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB51;

LAB48:    if (t18 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t37) = 1;

LAB51:    memset(t36, 0, 8);
    t33 = (t37 + 4);
    t21 = *((unsigned int *)t33);
    t22 = (~(t21));
    t23 = *((unsigned int *)t37);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t33) != 0)
        goto LAB54;

LAB55:    t39 = (t36 + 4);
    t28 = *((unsigned int *)t36);
    t29 = *((unsigned int *)t39);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB56;

LAB57:    t31 = *((unsigned int *)t36);
    t32 = (~(t31));
    t45 = *((unsigned int *)t39);
    t46 = (t32 || t45);
    if (t46 > 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t39) > 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t36) > 0)
        goto LAB62;

LAB63:    memcpy(t13, t42, 8);

LAB64:    t58 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t58, t13, 0, 0, 3, 0LL);
    goto LAB30;

LAB26:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 3528);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t11 = ((char*)((ng3)));
    memset(t37, 0, 8);
    t12 = (t5 + 4);
    t26 = (t11 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t11);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t12);
    t10 = *((unsigned int *)t26);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t26);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB68;

LAB65:    if (t18 != 0)
        goto LAB67;

LAB66:    *((unsigned int *)t37) = 1;

LAB68:    memset(t36, 0, 8);
    t33 = (t37 + 4);
    t21 = *((unsigned int *)t33);
    t22 = (~(t21));
    t23 = *((unsigned int *)t37);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB69;

LAB70:    if (*((unsigned int *)t33) != 0)
        goto LAB71;

LAB72:    t39 = (t36 + 4);
    t28 = *((unsigned int *)t36);
    t29 = *((unsigned int *)t39);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB73;

LAB74:    t31 = *((unsigned int *)t36);
    t32 = (~(t31));
    t45 = *((unsigned int *)t39);
    t46 = (t32 || t45);
    if (t46 > 0)
        goto LAB75;

LAB76:    if (*((unsigned int *)t39) > 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t36) > 0)
        goto LAB79;

LAB80:    memcpy(t13, t42, 8);

LAB81:    t58 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t58, t13, 0, 0, 4, 0LL);
    goto LAB30;

LAB28:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 3688);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t11 = ((char*)((ng6)));
    memset(t37, 0, 8);
    t12 = (t5 + 4);
    t26 = (t11 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t11);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t12);
    t10 = *((unsigned int *)t26);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t26);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB85;

LAB82:    if (t18 != 0)
        goto LAB84;

LAB83:    *((unsigned int *)t37) = 1;

LAB85:    memset(t36, 0, 8);
    t33 = (t37 + 4);
    t21 = *((unsigned int *)t33);
    t22 = (~(t21));
    t23 = *((unsigned int *)t37);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB86;

LAB87:    if (*((unsigned int *)t33) != 0)
        goto LAB88;

LAB89:    t39 = (t36 + 4);
    t28 = *((unsigned int *)t36);
    t29 = *((unsigned int *)t39);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB90;

LAB91:    t31 = *((unsigned int *)t36);
    t32 = (~(t31));
    t45 = *((unsigned int *)t39);
    t46 = (t32 || t45);
    if (t46 > 0)
        goto LAB92;

LAB93:    if (*((unsigned int *)t39) > 0)
        goto LAB94;

LAB95:    if (*((unsigned int *)t36) > 0)
        goto LAB96;

LAB97:    memcpy(t13, t42, 8);

LAB98:    t58 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t58, t13, 0, 0, 3, 0LL);
    goto LAB30;

LAB33:    t57 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t37) = 1;
    goto LAB38;

LAB37:    t64 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB38;

LAB39:    t69 = ((char*)((ng4)));
    goto LAB40;

LAB41:    t74 = (t0 + 3208);
    t75 = (t74 + 56U);
    t76 = *((char **)t75);
    t77 = ((char*)((ng2)));
    memset(t78, 0, 8);
    xsi_vlog_unsigned_add(t78, 4, t76, 4, t77, 4);
    goto LAB42;

LAB43:    xsi_vlog_unsigned_bit_combine(t36, 4, t69, 4, t78, 4);
    goto LAB47;

LAB45:    memcpy(t36, t69, 8);
    goto LAB47;

LAB50:    t27 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB51;

LAB52:    *((unsigned int *)t36) = 1;
    goto LAB55;

LAB54:    t38 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB55;

LAB56:    t40 = ((char*)((ng4)));
    goto LAB57;

LAB58:    t41 = (t0 + 3368);
    t43 = (t41 + 56U);
    t44 = *((char **)t43);
    t57 = ((char*)((ng2)));
    memset(t42, 0, 8);
    xsi_vlog_unsigned_add(t42, 3, t44, 3, t57, 3);
    goto LAB59;

LAB60:    xsi_vlog_unsigned_bit_combine(t13, 3, t40, 3, t42, 3);
    goto LAB64;

LAB62:    memcpy(t13, t40, 8);
    goto LAB64;

LAB67:    t27 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB68;

LAB69:    *((unsigned int *)t36) = 1;
    goto LAB72;

LAB71:    t38 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB72;

LAB73:    t40 = ((char*)((ng4)));
    goto LAB74;

LAB75:    t41 = (t0 + 3528);
    t43 = (t41 + 56U);
    t44 = *((char **)t43);
    t57 = ((char*)((ng2)));
    memset(t42, 0, 8);
    xsi_vlog_unsigned_add(t42, 4, t44, 4, t57, 4);
    goto LAB76;

LAB77:    xsi_vlog_unsigned_bit_combine(t13, 4, t40, 4, t42, 4);
    goto LAB81;

LAB79:    memcpy(t13, t40, 8);
    goto LAB81;

LAB84:    t27 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB85;

LAB86:    *((unsigned int *)t36) = 1;
    goto LAB89;

LAB88:    t38 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB89;

LAB90:    t40 = ((char*)((ng4)));
    goto LAB91;

LAB92:    t41 = (t0 + 3688);
    t43 = (t41 + 56U);
    t44 = *((char **)t43);
    t57 = ((char*)((ng2)));
    memset(t42, 0, 8);
    xsi_vlog_unsigned_add(t42, 3, t44, 3, t57, 3);
    goto LAB93;

LAB94:    xsi_vlog_unsigned_bit_combine(t13, 3, t40, 3, t42, 3);
    goto LAB98;

LAB96:    memcpy(t13, t40, 8);
    goto LAB98;

LAB99:    xsi_set_current_line(55, ng0);

LAB102:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng4)));
    memset(t13, 0, 8);
    t11 = (t5 + 4);
    t12 = (t4 + 4);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t4);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t11);
    t22 = *((unsigned int *)t12);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB106;

LAB103:    if (t23 != 0)
        goto LAB105;

LAB104:    *((unsigned int *)t13) = 1;

LAB106:    memset(t36, 0, 8);
    t27 = (t13 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t13);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB107;

LAB108:    if (*((unsigned int *)t27) != 0)
        goto LAB109;

LAB110:    t38 = (t36 + 4);
    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t38);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB111;

LAB112:    memcpy(t78, t36, 8);

LAB113:    t76 = (t78 + 4);
    t101 = *((unsigned int *)t76);
    t102 = (~(t101));
    t103 = *((unsigned int *)t78);
    t104 = (t103 & t102);
    t105 = (t104 != 0);
    if (t105 > 0)
        goto LAB125;

LAB126:
LAB127:    goto LAB101;

LAB105:    t26 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB106;

LAB107:    *((unsigned int *)t36) = 1;
    goto LAB110;

LAB109:    t33 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB110;

LAB111:    t39 = (t0 + 2168U);
    t40 = *((char **)t39);
    t39 = ((char*)((ng4)));
    memset(t37, 0, 8);
    t41 = (t40 + 4);
    t43 = (t39 + 4);
    t48 = *((unsigned int *)t40);
    t49 = *((unsigned int *)t39);
    t50 = (t48 ^ t49);
    t51 = *((unsigned int *)t41);
    t52 = *((unsigned int *)t43);
    t53 = (t51 ^ t52);
    t54 = (t50 | t53);
    t55 = *((unsigned int *)t41);
    t56 = *((unsigned int *)t43);
    t59 = (t55 | t56);
    t60 = (~(t59));
    t61 = (t54 & t60);
    if (t61 != 0)
        goto LAB117;

LAB114:    if (t59 != 0)
        goto LAB116;

LAB115:    *((unsigned int *)t37) = 1;

LAB117:    memset(t42, 0, 8);
    t57 = (t37 + 4);
    t62 = *((unsigned int *)t57);
    t63 = (~(t62));
    t66 = *((unsigned int *)t37);
    t67 = (t66 & t63);
    t68 = (t67 & 1U);
    if (t68 != 0)
        goto LAB118;

LAB119:    if (*((unsigned int *)t57) != 0)
        goto LAB120;

LAB121:    t70 = *((unsigned int *)t36);
    t71 = *((unsigned int *)t42);
    t72 = (t70 & t71);
    *((unsigned int *)t78) = t72;
    t64 = (t36 + 4);
    t65 = (t42 + 4);
    t69 = (t78 + 4);
    t73 = *((unsigned int *)t64);
    t80 = *((unsigned int *)t65);
    t81 = (t73 | t80);
    *((unsigned int *)t69) = t81;
    t82 = *((unsigned int *)t69);
    t83 = (t82 != 0);
    if (t83 == 1)
        goto LAB122;

LAB123:
LAB124:    goto LAB113;

LAB116:    t44 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB117;

LAB118:    *((unsigned int *)t42) = 1;
    goto LAB121;

LAB120:    t58 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB121;

LAB122:    t84 = *((unsigned int *)t78);
    t85 = *((unsigned int *)t69);
    *((unsigned int *)t78) = (t84 | t85);
    t74 = (t36 + 4);
    t75 = (t42 + 4);
    t86 = *((unsigned int *)t36);
    t87 = (~(t86));
    t88 = *((unsigned int *)t74);
    t89 = (~(t88));
    t90 = *((unsigned int *)t42);
    t91 = (~(t90));
    t92 = *((unsigned int *)t75);
    t93 = (~(t92));
    t35 = (t87 & t89);
    t94 = (t91 & t93);
    t95 = (~(t35));
    t96 = (~(t94));
    t97 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t97 & t95);
    t98 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t98 & t96);
    t99 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t99 & t95);
    t100 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t100 & t96);
    goto LAB124;

LAB125:    xsi_set_current_line(57, ng0);

LAB128:    xsi_set_current_line(58, ng0);
    t77 = (t0 + 3208);
    t79 = (t77 + 56U);
    t106 = *((char **)t79);
    t107 = ((char*)((ng3)));
    memset(t108, 0, 8);
    t109 = (t106 + 4);
    t110 = (t107 + 4);
    t111 = *((unsigned int *)t106);
    t112 = *((unsigned int *)t107);
    t113 = (t111 ^ t112);
    t114 = *((unsigned int *)t109);
    t115 = *((unsigned int *)t110);
    t116 = (t114 ^ t115);
    t117 = (t113 | t116);
    t118 = *((unsigned int *)t109);
    t119 = *((unsigned int *)t110);
    t120 = (t118 | t119);
    t121 = (~(t120));
    t122 = (t117 & t121);
    if (t122 != 0)
        goto LAB132;

LAB129:    if (t120 != 0)
        goto LAB131;

LAB130:    *((unsigned int *)t108) = 1;

LAB132:    t124 = (t108 + 4);
    t125 = *((unsigned int *)t124);
    t126 = (~(t125));
    t127 = *((unsigned int *)t108);
    t128 = (t127 & t126);
    t129 = (t128 != 0);
    if (t129 > 0)
        goto LAB133;

LAB134:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB161;

LAB160:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB161;

LAB164:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB162;

LAB163:    t27 = (t13 + 4);
    t6 = *((unsigned int *)t27);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB165;

LAB166:
LAB167:
LAB135:    goto LAB127;

LAB131:    t123 = (t108 + 4);
    *((unsigned int *)t108) = 1;
    *((unsigned int *)t123) = 1;
    goto LAB132;

LAB133:    xsi_set_current_line(59, ng0);

LAB136:    xsi_set_current_line(61, ng0);
    t130 = ((char*)((ng4)));
    t131 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t131, t130, 0, 0, 4, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 3, t4, 3, t5, 3);
    t11 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 3, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB140;

LAB137:    if (t18 != 0)
        goto LAB139;

LAB138:    *((unsigned int *)t13) = 1;

LAB140:    t27 = (t13 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB141;

LAB142:
LAB143:    goto LAB135;

LAB139:    t26 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB140;

LAB141:    xsi_set_current_line(65, ng0);

LAB144:    xsi_set_current_line(67, ng0);
    t33 = ((char*)((ng4)));
    t38 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t38, t33, 0, 0, 3, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 4, t4, 4, t5, 4);
    t11 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 4, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB148;

LAB145:    if (t18 != 0)
        goto LAB147;

LAB146:    *((unsigned int *)t13) = 1;

LAB148:    t27 = (t13 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB149;

LAB150:
LAB151:    goto LAB143;

LAB147:    t26 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB148;

LAB149:    xsi_set_current_line(71, ng0);

LAB152:    xsi_set_current_line(73, ng0);
    t33 = ((char*)((ng4)));
    t38 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t38, t33, 0, 0, 4, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 3, t4, 3, t5, 3);
    t11 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 3, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB156;

LAB153:    if (t18 != 0)
        goto LAB155;

LAB154:    *((unsigned int *)t13) = 1;

LAB156:    t27 = (t13 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB157;

LAB158:
LAB159:    goto LAB151;

LAB155:    t26 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB156;

LAB157:    xsi_set_current_line(77, ng0);
    t33 = ((char*)((ng4)));
    t38 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t38, t33, 0, 0, 3, 0LL);
    goto LAB159;

LAB161:    t26 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB163;

LAB162:    *((unsigned int *)t13) = 1;
    goto LAB163;

LAB165:    xsi_set_current_line(82, ng0);
    t33 = (t0 + 3208);
    t38 = (t33 + 56U);
    t39 = *((char **)t38);
    t40 = ((char*)((ng2)));
    memset(t36, 0, 8);
    xsi_vlog_unsigned_add(t36, 4, t39, 4, t40, 4);
    t41 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t41, t36, 0, 0, 4, 0LL);
    goto LAB167;

}

static void Cont_89_1(char *t0)
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

LAB0:    t1 = (t0 + 4856U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6064);
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
    t18 = (t0 + 5936);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_90_2(char *t0)
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

LAB0:    t1 = (t0 + 5104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6128);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 7U;
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
    xsi_driver_vfirst_trans(t5, 0, 2);
    t18 = (t0 + 5952);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_91_3(char *t0)
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

LAB0:    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6192);
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
    t18 = (t0 + 5968);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_92_4(char *t0)
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

LAB0:    t1 = (t0 + 5600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 7U;
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
    xsi_driver_vfirst_trans(t5, 0, 2);
    t18 = (t0 + 5984);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000621663921_2582214024_init()
{
	static char *pe[] = {(void *)Always_32_0,(void *)Cont_89_1,(void *)Cont_90_2,(void *)Cont_91_3,(void *)Cont_92_4};
	xsi_register_didat("work_m_00000000000621663921_2582214024", "isim/clock_timer_top_isim_beh.exe.sim/work/m_00000000000621663921_2582214024.didat");
	xsi_register_executes(pe);
}
