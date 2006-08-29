// $Id$
// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed into the Public Domain, for any use,
// without warranty, 2004 by Wilson Snyder.

module t (/*AUTOARG*/
   // Inputs
   clk
   );

   input clk;
   integer cyc; initial cyc=1;

   reg [255:0] 		i;
   wire [255:0]		q;

   assign q = {
		i[176],i[168],i[126],i[177],i[097],i[123],i[231],i[039],
		i[156],i[026],i[001],i[052],i[005],i[240],i[157],i[048],
		i[111],i[088],i[133],i[225],i[046],i[038],i[004],i[234],
		i[115],i[008],i[069],i[099],i[137],i[130],i[255],i[122],
		i[223],i[195],i[224],i[083],i[094],i[018],i[067],i[034],
		i[221],i[105],i[104],i[107],i[053],i[066],i[020],i[174],
		i[010],i[196],i[003],i[041],i[071],i[194],i[154],i[110],
		i[186],i[210],i[040],i[044],i[243],i[236],i[239],i[183],
		i[164],i[064],i[086],i[193],i[055],i[206],i[203],i[128],
		i[190],i[233],i[023],i[022],i[135],i[108],i[061],i[139],
		i[180],i[043],i[109],i[090],i[229],i[238],i[095],i[173],
		i[208],i[054],i[025],i[024],i[148],i[079],i[246],i[142],
		i[181],i[129],i[120],i[220],i[036],i[159],i[201],i[119],
		i[216],i[152],i[175],i[138],i[242],i[143],i[101],i[035],
		i[228],i[082],i[211],i[062],i[076],i[124],i[150],i[149],
		i[235],i[227],i[250],i[134],i[068],i[032],i[060],i[144],
		i[042],i[163],i[087],i[059],i[213],i[251],i[200],i[070],
		i[145],i[204],i[249],i[191],i[127],i[247],i[106],i[017],
		i[028],i[045],i[215],i[162],i[205],i[073],i[065],i[084],
		i[153],i[158],i[085],i[197],i[212],i[114],i[096],i[118],
		i[146],i[030],i[058],i[230],i[141],i[000],i[199],i[171],
		i[182],i[185],i[021],i[016],i[033],i[237],i[015],i[112],
		i[222],i[253],i[244],i[031],i[248],i[092],i[226],i[179],
		i[189],i[056],i[132],i[116],i[072],i[184],i[027],i[002],
		i[103],i[125],i[009],i[078],i[178],i[245],i[170],i[161],
		i[102],i[047],i[192],i[012],i[057],i[207],i[187],i[151],
		i[218],i[254],i[214],i[037],i[131],i[165],i[011],i[098],
		i[169],i[209],i[167],i[202],i[100],i[172],i[147],i[013],
		i[136],i[166],i[252],i[077],i[051],i[074],i[140],i[050],
		i[217],i[198],i[081],i[091],i[075],i[121],i[188],i[219],
		i[160],i[241],i[080],i[155],i[019],i[006],i[014],i[029],
		i[089],i[049],i[113],i[232],i[007],i[117],i[063],i[093]
	       };
	       
   always @ (posedge clk) begin
      if (cyc!=0) begin
	 cyc <= cyc + 1;
	 $write("%x %x\n", q, i);
	 if (cyc==1) begin
	    i <= 256'hed388e646c843d35de489bab2413d77045e0eb7642b148537491f3da147e7f26;
	 end
	 if (cyc==2) begin
	    i <= 256'h0e17c88f3d5fe51a982646c8e2bd68c3e236ddfddddbdad20a48e039c9f395b8;
	    if (q != 256'h697bad4b0cf2d7fa4ad22809293710bb67d1eb3131e8eb2135f2c7bd820baa84) $stop;
	 end
	 if (cyc==3) begin
	    if (q != 256'h320eda5078b3e942353d16dddc8b29fd773b4fcec8323612dadfb1fa483f602c) $stop;
	 end
	 if (cyc==4) begin
	    $write("*-* All Finished *-*\n");
	    $finish;
	 end
      end
   end
endmodule