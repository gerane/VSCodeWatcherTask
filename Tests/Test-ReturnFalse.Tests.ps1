Remove-Module VSCodeWatcherTask -ErrorAction SilentlyContinue
Import-Module $PSScriptRoot\..\VSCodeWatcherTask\VSCodeWatcherTask.psd1 -Force

Describe 'Test-ReturnFalse' {

    Context 'Returns False' {

        It 'Should return False' {
            Test-ReturnFalse | Should Be $False
        }

        It 'Should not return True' {
            Test-ReturnFalse | Should not Be $True
        }

        It 'Should not return Null' {
            Test-ReturnFalse | Should BeNullOrEmpty
        }
    }
}