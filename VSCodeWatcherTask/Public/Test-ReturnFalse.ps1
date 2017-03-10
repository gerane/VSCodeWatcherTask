function Test-ReturnFalse
{
    [CmdletBinding()]
    param()

    Process
    {
        Try
        {
            Return $False
        }
        Catch
        {
            Throw
        }
    }
}