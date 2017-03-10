Remove-Module VSCodeWatcherTask -ErrorAction SilentlyContinue
Import-Module $PSScriptRoot\..\VSCodeWatcherTask\VSCodeWatcherTask.psd1 -Force

Describe 'Test-Return1' {

    Context 'Returns 1' {

        It 'Should return 1' {
            Test-Return1 | Should Be 1
        }

        It 'Should not return 2' {
            Test-Return1 | Should not Be 2
        }

        It 'Should not return Null' {
            Test-Return1 | Should BeNullOrEmpty
        }
    }
}