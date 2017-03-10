function Test-Return1
{
    [CmdletBinding()]
    param()

    Process
    {
        Try
        {
            Return 1
        }
        Catch
        {
            Throw
        }
    }
}