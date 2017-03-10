Remove-Module VSCodeWatcherTask -ErrorAction SilentlyContinue
Import-Module $PSScriptRoot\..\VSCodeWatcherTask\VSCodeWatcherTask.psd1 -Force

Describe 'Test-ReturnTrue' {

    Context 'Returns True' {

        It 'Should return True' {
            Test-ReturnTrue | Should Be $True
        }

        It 'Should not return False' {
            Test-ReturnTrue | Should not Be $False
        }

        It 'Should not return Null' {
            Test-ReturnTrue | Should BeNullOrEmpty
        }
    }
}