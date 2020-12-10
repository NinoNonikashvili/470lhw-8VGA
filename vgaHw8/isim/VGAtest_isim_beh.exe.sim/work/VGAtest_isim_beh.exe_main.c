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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004151810356_2450937180_init();
    work_m_00000000001333657892_2813066481_init();
    work_m_00000000001744481811_0514961472_init();
    work_m_00000000003292141712_3823007873_init();
    work_m_00000000001595100446_0190253118_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001595100446_0190253118");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
