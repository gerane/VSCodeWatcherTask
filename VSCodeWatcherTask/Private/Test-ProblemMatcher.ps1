function Test-ProblemMatcher
{
    [CmdletBinding()]
    param()

    Process
    {
        Try
        {
            gci .\ -rec
        }
        Catch
        {
            Throw
        }
    }
}