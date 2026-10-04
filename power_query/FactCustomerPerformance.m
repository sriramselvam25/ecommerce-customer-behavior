let
    Source = Csv.Document(File.Contents(ParameterDataPath & "FactCustomerPerformance.csv"),[Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source,[PromoteAllScalars=true]),
    Types = Table.TransformColumnTypes(Headers,{{"Date", type date},{"CustomerID", type text},{"Channel", type text},{"Segment", type text},{"Category", type text},{"Orders", Int64.Type},{"Revenue", Currency.Type},{"Cost", Currency.Type},{"TargetValue", Currency.Type}}),
    CleanText = Table.TransformColumns(Types,{{"Channel", Text.Trim},{"Segment", Text.Trim},{"Category", Text.Trim}}),
    Valid = Table.SelectRows(CleanText, each [Revenue] >= 0 and [Orders] > 0)
in
    Valid
