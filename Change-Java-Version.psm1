function Update-Environment {
    $locations = 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment',
                 'HKCU:\Environment'

    $locations | ForEach-Object {
        $k = Get-Item $_
        $k.GetValueNames() | ForEach-Object {
            $name  = $_
            $value = $k.GetValue($_)

            if ($userLocation -and $name -ieq 'PATH') {
                $Env:Path += ";$value"
            } else {
                Set-Item -Path Env:$name -Value $value
            }
        }

        $userLocation = $true
    }
}

function jdk($v) {
    $JDK = ''

    switch($v){
        '8j9'{ $JDK = 'C:\Program Files\Java\jdk8u265-b01_openj9' }
        '8hs'{ $JDK = 'C:\Program Files\Java\jdk8u265-b01_hotspot' }
        '11j9'{ $JDK = 'C:\Program Files\Java\jdk-11.0.8+10_openj9' }
        '11hs'{ $JDK = 'C:\Program Files\Java\jdk-11.0.8+10_hotspot' }
        '14j9'{ $JDK = 'C:\Program Files\Java\jdk-14.0.2+12_openj9' }
        '15hs'{ $JDK = 'C:\Program Files\Java\jdk-15+36_hotspot' }
    }

    [System.Environment]::SetEnvironmentVariable('JAVA_HOME',$JDK,[System.EnvironmentVariableTarget]::User)
    
    Update-Environment
    Update-Environment

    java -version
}
