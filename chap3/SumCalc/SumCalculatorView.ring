# Form/Window View - Generated Source Code File 
# Generated by the Ring 1.12 Form Designer
# Date : 28/05/2020
# Time : 22:19:29

Load "stdlibcore.ring"
Load "guilib.ring"

import System.GUI

if IsMainSourceFile() { 
	new App {
		StyleFusion()
		new SumCalculatorView { win.show() } 
		exec()
	}
}

class SumCalculatorView from WindowsViewParent
	win = new MainWindow() { 
		move(24,15)
		resize(304,279)
		setWindowTitle("SumCalculator App")
		setstylesheet("background-color:;") 

		setWindowFlags(Qt_Window) 

		oMenuBar = new qmenubar(win) {
		}
		win.SetMenuBar(oMenuBar)
 
		edtNumber1 = new lineedit(win) {
			move(108,31)
			resize(160,40)
			setstylesheet("color:#000000;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,10,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("12")
			setTextChangedEvent(Method(:calculateSum))
			setcursorPositionChangedEvent("")
			seteditingFinishedEvent("")
			setreturnPressedEvent("")
			setselectionChangedEvent("")
			settextEditedEvent("")
			
		}
		edtNumber2 = new lineedit(win) {
			move(108,85)
			resize(160,38)
			setstylesheet("color:#000000;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,10,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("8")
			setTextChangedEvent("")
			setcursorPositionChangedEvent("")
			seteditingFinishedEvent("")
			setreturnPressedEvent("")
			setselectionChangedEvent("")
			settextEditedEvent("")
			
		}
		btnCalculateSum = new pushbutton(win) {
			move(108,137)
			resize(160,42)
			setstylesheet("color:#000000;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,10,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("Calculate Sum")
			setClickEvent(Method(:calculateSum))
			setBtnImage(btnCalculateSum,"")
			
		}
		lblResult = new label(win) {
			move(108,194)
			resize(160,39)
			setstylesheet("color:#ffffff;background-color:#6f6f6f;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,10,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("lblResult")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
	}

# End of the Generated Source Code File...