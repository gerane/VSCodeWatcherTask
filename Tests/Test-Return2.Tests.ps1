Remove-Module VSCodeWatcherTask -ErrorAction SilentlyContinue
Import-Module $PSScriptRoot\..\VSCodeWatcherTask\VSCodeWatcherTask.psd1 -Force

Describe 'Test-Return2' {

    Context 'Returns 2' {

        It 'Should return 2' {
            Test-Return2 | Should Be 2
        }

        It 'Should not return 1' {
            Test-Return2 | Should not Be 1
        }

        It 'Should not return Null' {
            Test-Return2 | Should BeNullOrEmpty
        }
    }
}