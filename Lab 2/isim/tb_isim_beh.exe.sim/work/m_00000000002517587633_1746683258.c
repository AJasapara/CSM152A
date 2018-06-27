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
static const char *ng0 = "C:/Users/152/Desktop/lab2_mam/model_uart.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {10, 0};
static int ng5[] = {1, 0};
static int ng6[] = {8, 0};
static int ng7[] = {13, 0};
static const char *ng8 = "%d %s Received byte %02x (%s)";
static int ng9[] = {1095914544, 0, 85, 0};



static int sp_tskRxData(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1256);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(56, ng0);
    t5 = (t2 + 88U);
    t6 = *((char **)t5);
    t7 = (t6 + 0U);
    xsi_wp_set_status(t7, 1);
    *((char **)t3) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(57, ng0);
    t4 = (t1 + 3040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 3200);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 8);
    goto LAB4;

}

static int sp_tskTxData(char *t1, char *t2)
{
    char t5[8];
    char t7[8];
    int t0;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1688);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(65, ng0);

LAB5:    xsi_set_current_line(66, ng0);
    t6 = ((char*)((ng1)));
    t8 = (t1 + 3360);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t7, 0, 8);
    t11 = (t7 + 4);
    t12 = (t10 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 0);
    *((unsigned int *)t7) = t14;
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 0);
    *((unsigned int *)t11) = t16;
    t17 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t17 & 255U);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 & 255U);
    t19 = ((char*)((ng2)));
    xsi_vlogtype_concat(t5, 10, 10, 3U, t19, 1, t7, 8, t6, 1);
    t20 = (t1 + 3520);
    xsi_vlogvar_assign_value(t20, t5, 0, 0, 10);
    xsi_set_current_line(67, ng0);
    xsi_set_current_line(67, ng0);
    t4 = ((char*)((ng3)));
    t6 = (t1 + 3680);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);

LAB6:    t4 = (t1 + 3680);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng4)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t8, 32, t9, 32);
    t10 = (t5 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (~(t13));
    t15 = *((unsigned int *)t5);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(73, ng0);
    t4 = (t1 + 6872);
    xsi_trigger(t4, -1, -1);

LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB7:    xsi_set_current_line(68, ng0);

LAB9:    xsi_set_current_line(69, ng0);
    t11 = (t1 + 3520);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);
    t20 = (t1 + 3520);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t23 = (t1 + 3680);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_get_index_select_value(t7, 1, t19, t22, 2, t25, 32, 1);
    t26 = (t1 + 2720);
    xsi_vlogvar_assign_value(t26, t7, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    xsi_process_wait(t6, 1000000LL);
    *((char **)t3) = &&LAB10;
    t0 = 1;
    goto LAB1;

LAB10:    xsi_set_current_line(71, ng0);
    t4 = (t1 + 6704);
    xsi_trigger(t4, -1, -1);
    xsi_set_current_line(67, ng0);
    t4 = (t1 + 3680);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng5)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t8, 32, t9, 32);
    t10 = (t1 + 3680);
    xsi_vlogvar_assign_value(t10, t5, 0, 0, 32);
    goto LAB6;

}

static void Initial_25_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(26, ng0);

LAB2:    xsi_set_current_line(27, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2720);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_30_1(char *t0)
{
    char t12[8];
    char t13[8];
    char t40[8];
    char t56[8];
    char t64[8];
    char t101[8];
    char t123[8];
    char t132[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
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
    char *t55;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;
    char *t130;
    char *t131;

LAB0:    t1 = (t0 + 4848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 5168);
    *((int *)t2) = 1;
    t3 = (t0 + 4880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 4656);
    xsi_process_wait(t4, 500000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t2 + 4);
    t5 = *((unsigned int *)t3);
    t6 = (~(t5));
    t7 = *((unsigned int *)t2);
    t8 = (t7 & t6);
    t4 = (t0 + 7588);
    *((int *)t4) = t8;

LAB7:    t9 = (t0 + 7588);
    if (*((int *)t9) > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t9 = ((char*)((ng7)));
    memset(t12, 0, 8);
    t10 = (t4 + 4);
    t11 = (t9 + 4);
    t5 = *((unsigned int *)t4);
    t6 = *((unsigned int *)t9);
    t7 = (t5 ^ t6);
    t14 = *((unsigned int *)t10);
    t15 = *((unsigned int *)t11);
    t16 = (t14 ^ t15);
    t18 = (t7 | t16);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t11);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB15;

LAB12:    if (t21 != 0)
        goto LAB14;

LAB13:    *((unsigned int *)t12) = 1;

LAB15:    memset(t13, 0, 8);
    t24 = (t12 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t12);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t24) != 0)
        goto LAB18;

LAB19:    t31 = (t13 + 4);
    t32 = *((unsigned int *)t13);
    t33 = (!(t32));
    t34 = *((unsigned int *)t31);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB20;

LAB21:    memcpy(t64, t13, 8);

LAB22:    t91 = (t64 + 4);
    t92 = *((unsigned int *)t91);
    t93 = (~(t92));
    t94 = *((unsigned int *)t64);
    t95 = (t94 & t93);
    t96 = (t95 != 0);
    if (t96 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(48, ng0);

LAB46:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t9 = (t0 + 2880);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlogtype_concat(t132, 40, 40, 2U, t11, 32, t4, 8);
    t17 = (t0 + 2880);
    xsi_vlogvar_assign_value(t17, t132, 0, 0, 32);

LAB36:    goto LAB2;

LAB8:    xsi_set_current_line(34, ng0);

LAB10:    xsi_set_current_line(35, ng0);
    t10 = (t0 + 4656);
    xsi_process_wait(t10, 1000000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(35, ng0);
    t11 = (t0 + 6368);
    xsi_trigger(t11, -1, -1);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t9 = (t13 + 4);
    t10 = (t4 + 4);
    t5 = *((unsigned int *)t4);
    t6 = (t5 >> 1);
    *((unsigned int *)t13) = t6;
    t7 = *((unsigned int *)t10);
    t14 = (t7 >> 1);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 & 127U);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 & 127U);
    t11 = (t0 + 2320U);
    t17 = *((char **)t11);
    xsi_vlogtype_concat(t12, 8, 8, 2U, t17, 1, t13, 7);
    t11 = (t0 + 3040);
    xsi_vlogvar_assign_value(t11, t12, 0, 0, 8);
    t2 = (t0 + 7588);
    t8 = *((int *)t2);
    *((int *)t2) = (t8 - 1);
    goto LAB7;

LAB14:    t17 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB15;

LAB16:    *((unsigned int *)t13) = 1;
    goto LAB19;

LAB18:    t30 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB19;

LAB20:    t36 = (t0 + 3040);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = ((char*)((ng4)));
    memset(t40, 0, 8);
    t41 = (t38 + 4);
    t42 = (t39 + 4);
    t43 = *((unsigned int *)t38);
    t44 = *((unsigned int *)t39);
    t45 = (t43 ^ t44);
    t46 = *((unsigned int *)t41);
    t47 = *((unsigned int *)t42);
    t48 = (t46 ^ t47);
    t49 = (t45 | t48);
    t50 = *((unsigned int *)t41);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    t53 = (~(t52));
    t54 = (t49 & t53);
    if (t54 != 0)
        goto LAB26;

LAB23:    if (t52 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t40) = 1;

LAB26:    memset(t56, 0, 8);
    t57 = (t40 + 4);
    t58 = *((unsigned int *)t57);
    t59 = (~(t58));
    t60 = *((unsigned int *)t40);
    t61 = (t60 & t59);
    t62 = (t61 & 1U);
    if (t62 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t57) != 0)
        goto LAB29;

LAB30:    t65 = *((unsigned int *)t13);
    t66 = *((unsigned int *)t56);
    t67 = (t65 | t66);
    *((unsigned int *)t64) = t67;
    t68 = (t13 + 4);
    t69 = (t56 + 4);
    t70 = (t64 + 4);
    t71 = *((unsigned int *)t68);
    t72 = *((unsigned int *)t69);
    t73 = (t71 | t72);
    *((unsigned int *)t70) = t73;
    t74 = *((unsigned int *)t70);
    t75 = (t74 != 0);
    if (t75 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB22;

LAB25:    t55 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t55) = 1;
    goto LAB26;

LAB27:    *((unsigned int *)t56) = 1;
    goto LAB30;

LAB29:    t63 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t63) = 1;
    goto LAB30;

LAB31:    t76 = *((unsigned int *)t64);
    t77 = *((unsigned int *)t70);
    *((unsigned int *)t64) = (t76 | t77);
    t78 = (t13 + 4);
    t79 = (t56 + 4);
    t80 = *((unsigned int *)t78);
    t81 = (~(t80));
    t82 = *((unsigned int *)t13);
    t8 = (t82 & t81);
    t83 = *((unsigned int *)t79);
    t84 = (~(t83));
    t85 = *((unsigned int *)t56);
    t86 = (t85 & t84);
    t87 = (~(t8));
    t88 = (~(t86));
    t89 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t89 & t87);
    t90 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t90 & t88);
    goto LAB33;

LAB34:    xsi_set_current_line(40, ng0);

LAB37:    xsi_set_current_line(41, ng0);
    t97 = (t0 + 2880);
    t98 = (t97 + 56U);
    t99 = *((char **)t98);
    t100 = ((char*)((ng3)));
    memset(t101, 0, 8);
    t102 = (t99 + 4);
    t103 = (t100 + 4);
    t104 = *((unsigned int *)t99);
    t105 = *((unsigned int *)t100);
    t106 = (t104 ^ t105);
    t107 = *((unsigned int *)t102);
    t108 = *((unsigned int *)t103);
    t109 = (t107 ^ t108);
    t110 = (t106 | t109);
    t111 = *((unsigned int *)t102);
    t112 = *((unsigned int *)t103);
    t113 = (t111 | t112);
    t114 = (~(t113));
    t115 = (t110 & t114);
    if (t115 != 0)
        goto LAB39;

LAB38:    if (t113 != 0)
        goto LAB40;

LAB41:    t117 = (t101 + 4);
    t118 = *((unsigned int *)t117);
    t119 = (~(t118));
    t120 = *((unsigned int *)t101);
    t121 = (t120 & t119);
    t122 = (t121 != 0);
    if (t122 > 0)
        goto LAB42;

LAB43:
LAB44:    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB36;

LAB39:    *((unsigned int *)t101) = 1;
    goto LAB41;

LAB40:    t116 = (t101 + 4);
    *((unsigned int *)t101) = 1;
    *((unsigned int *)t116) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(42, ng0);

LAB45:    xsi_set_current_line(43, ng0);
    *((int *)t123) = xsi_vlog_stime(1000.0000000000000, 1000.0000000000000);
    t124 = (t123 + 4);
    *((int *)t124) = 0;
    t125 = ((char*)((ng9)));
    t126 = (t0 + 2880);
    t127 = (t126 + 56U);
    t128 = *((char **)t127);
    t129 = (t0 + 2880);
    t130 = (t129 + 56U);
    t131 = *((char **)t130);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t123, 32, (char)118, t125, 40, (char)118, t128, 32, (char)118, t131, 32);
    goto LAB44;

}


extern void work_m_00000000002517587633_1746683258_init()
{
	static char *pe[] = {(void *)Initial_25_0,(void *)Always_30_1};
	static char *se[] = {(void *)sp_tskRxData,(void *)sp_tskTxData};
	xsi_register_didat("work_m_00000000002517587633_1746683258", "isim/tb_isim_beh.exe.sim/work/m_00000000002517587633_1746683258.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
