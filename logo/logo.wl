img = Graphics[
	{
		RGBColor[0.1,0.3,0.3], Rectangle[{0,0}, {1,1}],
		Text[Style["cq", FontSize->40, FontFamily->"Roboto", Bold, White],{0.5, 0.5}],
		GrayLevel[0.9], Rectangle[{1,0}, {4,1}],
		Text[Style["Containers", FontSize->40, FontFamily->"Roboto Mono", Black],{2.5, 0.5}]
	}
]

img = Magnify[img, 0.4]

Export["logo.svg", img]