function Test-Return2
{
    [CmdletBinding()]
    param()

    Process
    {
        Try
        {
            Return 2
        }
        Catch
        {
            Throw
        }
    }
}