Option Explicit

'----Declare the module level variables
Dim strLocation As String
Dim intSize As Integer
Dim dbPrice As Double
Dim dtAvail As Date

'----The Subroutine to Get the Artisan Avenue Properties
Sub ArtisanAvenue()

strLocation = "Artisan Avenue"
intSize = 2200
dbPrice = 545000
dtAvail = #2/12/2019#

End Sub

'----The Subroutine to Display the Artisan Avenue Properties
Sub DisplayAvail()

'----Display the Artisan Avenue Properties
MsgBox "The location of the property is " & strLocation & vbCrLf & _
       "The size of the property is " & intSize & "sqft" & vbCrLf & _
       "The price of the property is $" & FormatNumber(dbPrice, 0) & vbCrLf & _
       "The property is available from " & Format(dtAvail, "Short Date") & " onwards."

End Sub

'----The Subroutine to Adjust the Artisan Avenue Properties
Sub AdjustAvail()

intSize = 2200 + 200
dbPrice = 545000 + 20000

End Sub

'----The Subroutine to Calculate the Price of Artisan Avenue
Sub CalculatePrice()

Dim dbPricePerSqFt As Double

dbPricePerSqFt = dbPrice / intSize

MsgBox "The price per square foot of the Artisan Avenue property is $" & FormatNumber(dbPricePerSqFt, 0) & "."

End Sub

'----The Subroutine to Generate the Report
Sub GenerateReport()

Dim strReport As String

'----Generate and save the report to variable
strReport = "Location: " & strLocation & vbCrLf & _
            "Size: " & intSize & "sqft" & vbCrLf & _
            "Price: $" & FormatNumber(dbPrice, 0) & vbCrLf & _
            "Availability: " & Format(dtAvail, "Long Date")

'----Display the report
MsgBox strReport

End Sub

'----The Subroutine to Set the Date Available
Sub SetAvailDate()

'----Capture the input date
dtAvail = InputBox("Please enter the new date available (mm/dd/yyyy):")

End Sub

'----The Subroutine to Calculate the Days to Availability
Sub CalculateDays()

Dim datTimeNow As Date
Dim intDaysCount As Integer

'----Get the current date
datTimeNow = Now

'----Calculate the days to availability
intDaysCount = dtAvail - datTimeNow

'----Display the days to availability
MsgBox "The days to availability for the Artisan Avenue property is " & intDaysCount & "days."

End Sub