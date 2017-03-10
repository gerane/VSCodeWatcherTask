function Test-ReturnTrue
{
    [CmdletBinding()]
    param()

    Process
    {
        Try
        {
            Return $True
        }
        Catch
        {
            Throw
        }
    }
}