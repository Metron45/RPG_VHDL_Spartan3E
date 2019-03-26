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
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <blockdef name="VGAdriver">
            <timestamp>2019-3-26T10:46:11</timestamp>
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
        <blockdef name="picture">
            <timestamp>2019-3-26T10:46:17</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="VGAdriver" name="XLXI_1">
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
        <block symbolname="picture" name="XLXI_2">
            <blockpin signalname="XLXN_1(9:0)" name="PIX_X(9:0)" />
            <blockpin signalname="XLXN_2(8:0)" name="PIX_Y(8:0)" />
            <blockpin signalname="XLXN_3(2:0)" name="RGB(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2128" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1088" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(9:0)">
            <wire x2="688" y1="1104" y2="1856" x1="688" />
            <wire x2="3056" y1="1856" y2="1856" x1="688" />
            <wire x2="1088" y1="1104" y2="1104" x1="688" />
            <wire x2="3056" y1="992" y2="992" x1="2512" />
            <wire x2="3056" y1="992" y2="1856" x1="3056" />
        </branch>
        <branch name="XLXN_2(8:0)">
            <wire x2="784" y1="1168" y2="1792" x1="784" />
            <wire x2="2944" y1="1792" y2="1792" x1="784" />
            <wire x2="1088" y1="1168" y2="1168" x1="784" />
            <wire x2="2944" y1="1056" y2="1056" x1="2512" />
            <wire x2="2944" y1="1056" y2="1792" x1="2944" />
        </branch>
        <branch name="XLXN_3(2:0)">
            <wire x2="2032" y1="1104" y2="1104" x1="1472" />
            <wire x2="2032" y1="1056" y2="1104" x1="2032" />
            <wire x2="2128" y1="1056" y2="1056" x1="2032" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="2112" y1="672" y2="672" x1="1152" />
            <wire x2="2128" y1="672" y2="672" x1="2112" />
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
    </sheet>
</drawing>