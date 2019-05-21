<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(9:0)" />
        <signal name="XLXN_2(8:0)" />
        <signal name="XLXN_3(2:0)" />
        <signal name="Clk_50MHz" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_5(3:0)" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_26(2:0)" />
        <signal name="XLXN_28" />
        <signal name="XLXN_30(4:0)" />
        <signal name="XLXN_32(7:0)" />
        <signal name="XLXN_34" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <blockdef name="VGAdriver">
            <timestamp>2019-5-7T10:19:48</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="GameMap">
            <timestamp>2019-5-7T11:36:59</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2019-5-14T10:43:12</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="GameLogic">
            <timestamp>2019-5-21T10:24:12</timestamp>
            <rect width="304" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-364" height="24" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
        </blockdef>
        <block symbolname="GameMap" name="XLXI_3">
            <blockpin signalname="XLXN_1(9:0)" name="PIX_X(9:0)" />
            <blockpin signalname="XLXN_2(8:0)" name="PIX_Y(8:0)" />
            <blockpin signalname="XLXN_3(2:0)" name="RGB(2:0)" />
            <blockpin signalname="XLXN_26(2:0)" name="RGB_MAP(2:0)" />
            <blockpin signalname="XLXN_30(4:0)" name="DIV_X(4:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="DIV_Y(3:0)" />
        </block>
        <block symbolname="VGAdriver" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="CLK_50MHz" />
            <blockpin signalname="XLXN_3(2:0)" name="RGB(2:0)" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_1(9:0)" name="PIX_X(9:0)" />
            <blockpin signalname="XLXN_2(8:0)" name="PIX_Y(8:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_7">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_28" name="F0" />
            <blockpin signalname="XLXN_34" name="DO_Rdy" />
            <blockpin signalname="XLXN_32(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="GameLogic" name="XLXI_18">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_28" name="F0" />
            <blockpin signalname="XLXN_34" name="DIRdy" />
            <blockpin signalname="XLXN_30(4:0)" name="DIV_X(4:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="DIV_Y(3:0)" />
            <blockpin signalname="XLXN_32(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_26(2:0)" name="RGB_MAP(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_3(2:0)">
            <wire x2="1488" y1="1104" y2="1104" x1="1472" />
            <wire x2="2128" y1="1056" y2="1056" x1="1488" />
            <wire x2="1488" y1="1056" y2="1104" x1="1488" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="128" y1="960" y2="2016" x1="128" />
            <wire x2="176" y1="2016" y2="2016" x1="128" />
            <wire x2="128" y1="2016" y2="2080" x1="128" />
            <wire x2="176" y1="2080" y2="2080" x1="128" />
            <wire x2="592" y1="960" y2="960" x1="128" />
            <wire x2="1216" y1="960" y2="960" x1="592" />
            <wire x2="592" y1="960" y2="1600" x1="592" />
            <wire x2="1200" y1="1600" y2="1600" x1="592" />
            <wire x2="1216" y1="672" y2="672" x1="1152" />
            <wire x2="2128" y1="672" y2="672" x1="1216" />
            <wire x2="1216" y1="672" y2="960" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1152" y="672" name="Clk_50MHz" orien="R180" />
        <branch name="VGA_R">
            <wire x2="2544" y1="672" y2="672" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="672" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="2544" y1="736" y2="736" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="736" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="2544" y1="800" y2="800" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="800" name="VGA_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="2544" y1="864" y2="864" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="864" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="2544" y1="928" y2="928" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="928" name="VGA_VS" orien="R0" />
        <branch name="XLXN_2(8:0)">
            <wire x2="1088" y1="1168" y2="1168" x1="784" />
            <wire x2="784" y1="1168" y2="2064" x1="784" />
            <wire x2="2944" y1="2064" y2="2064" x1="784" />
            <wire x2="2944" y1="1056" y2="1056" x1="2512" />
            <wire x2="2944" y1="1056" y2="2064" x1="2944" />
        </branch>
        <branch name="XLXN_1(9:0)">
            <wire x2="1088" y1="1104" y2="1104" x1="688" />
            <wire x2="688" y1="1104" y2="2128" x1="688" />
            <wire x2="3056" y1="2128" y2="2128" x1="688" />
            <wire x2="3056" y1="992" y2="992" x1="2512" />
            <wire x2="3056" y1="992" y2="2128" x1="3056" />
        </branch>
        <instance x="1088" y="1200" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2128" y="1088" name="XLXI_4" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="464" y1="880" y2="880" x1="112" />
            <wire x2="112" y1="880" y2="1888" x1="112" />
            <wire x2="176" y1="1888" y2="1888" x1="112" />
            <wire x2="464" y1="640" y2="640" x1="448" />
            <wire x2="464" y1="640" y2="880" x1="464" />
        </branch>
        <iomarker fontsize="28" x="448" y="640" name="PS2_Clk" orien="R180" />
        <instance x="176" y="2112" name="XLXI_7" orien="R0">
        </instance>
        <branch name="PS2_Data">
            <wire x2="96" y1="352" y2="1952" x1="96" />
            <wire x2="176" y1="1952" y2="1952" x1="96" />
        </branch>
        <iomarker fontsize="28" x="96" y="352" name="PS2_Data" orien="R270" />
        <branch name="XLXN_5(3:0)">
            <wire x2="1200" y1="1856" y2="1856" x1="1152" />
            <wire x2="1152" y1="1856" y2="1968" x1="1152" />
            <wire x2="1728" y1="1968" y2="1968" x1="1152" />
            <wire x2="1728" y1="1296" y2="1296" x1="1472" />
            <wire x2="1728" y1="1296" y2="1968" x1="1728" />
        </branch>
        <branch name="XLXN_26(2:0)">
            <wire x2="1088" y1="1232" y2="1232" x1="1008" />
            <wire x2="1008" y1="1232" y2="1376" x1="1008" />
            <wire x2="1696" y1="1376" y2="1376" x1="1008" />
            <wire x2="1696" y1="1376" y2="1600" x1="1696" />
            <wire x2="1696" y1="1600" y2="1600" x1="1632" />
        </branch>
        <branch name="XLXN_30(4:0)">
            <wire x2="1200" y1="1792" y2="1792" x1="1136" />
            <wire x2="1136" y1="1792" y2="2016" x1="1136" />
            <wire x2="1776" y1="2016" y2="2016" x1="1136" />
            <wire x2="1776" y1="1232" y2="1232" x1="1472" />
            <wire x2="1776" y1="1232" y2="2016" x1="1776" />
        </branch>
        <branch name="XLXN_32(7:0)">
            <wire x2="880" y1="1888" y2="1888" x1="560" />
            <wire x2="880" y1="1888" y2="1920" x1="880" />
            <wire x2="1200" y1="1920" y2="1920" x1="880" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="624" y1="2016" y2="2016" x1="560" />
            <wire x2="1200" y1="1664" y2="1664" x1="624" />
            <wire x2="624" y1="1664" y2="2016" x1="624" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="864" y1="2080" y2="2080" x1="560" />
            <wire x2="864" y1="1728" y2="2080" x1="864" />
            <wire x2="1200" y1="1728" y2="1728" x1="864" />
        </branch>
        <instance x="1200" y="1952" name="XLXI_18" orien="R0">
        </instance>
    </sheet>
</drawing>