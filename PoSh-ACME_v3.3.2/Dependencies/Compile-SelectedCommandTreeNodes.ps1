foreach ($root in $AllHostsNode) { 
    foreach ($Category in $root.Nodes) {                
        if ($CommandsViewMethodRadioButton.Checked) {
            foreach ($Entry in $Category.nodes) {                        
                # Builds the query that is selected
                if ($Entry.Checked -and $Entry -match '(RPC)' -and $Entry -match 'PoSh') {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_RPC_PoSh
                        Properties     = $Command.Properties_PoSh
                        ExportFileName = $Command.ExportFileName
                        Type           = "(RPC) PoSh"
                    }
                }
                elseif ($Entry.Checked -and $Entry -match '(RPC)' -and  $Entry -match 'WMI' -and $Entry -notmatch '(WinRS)' -and $Entry -notmatch '(WinRM)') {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_WMI
                        Properties     = $Command.Properties_WMI
                        ExportFileName = $Command.ExportFileName
                        Type           = "(RPC) WMI"
                    }
                }
                elseif ($Entry.Checked -and $Entry -match '(WinRM)' -and $Entry -match 'CMD') {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_WinRM_CMD
                        ExportFileName = $Command.ExportFileName
                        Type           = "(WinRM) CMD"
                    }
                }
                elseif ($Entry.Checked -and $Entry -match '(WinRM)' -and $Entry -match 'Script') {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_WinRM_Script
                        #Properties     = $Command.Properties_Script
                        ExportFileName = $Command.ExportFileName
                        Type           = "(WinRM) Script"
                    }
                }
                elseif ($Entry.Checked -and $Entry -match '(WinRM)' -and $Entry -match 'PoSh') {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_WinRM_PoSh
                        Properties     = $Command.Properties_PoSh
                        ExportFileName = $Command.ExportFileName
                        Type           = '(WinRM) PoSh'
                    }
                }
                elseif ($Entry.Checked -and $Entry -match '(WinRM)' -and $Entry -match 'WMI') {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_WinRM_WMI
                        Properties     = $Command.Properties_WMI
                        ExportFileName = $Command.ExportFileName
                        Type           = "(WinRM) WMI"
                    }
                }
            }
        }
        if ($CommandsViewQueryRadioButton.Checked) {
            foreach ($Entry in $Category.nodes) { 
                # Builds the query that is selected
                if ($Entry -match '(RPC)' -and $Entry -match 'PoSh' -and $Entry.Checked) {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_RPC_PoSh
                        Properties     = $Command.Properties_PoSh
                        ExportFileName = $Command.ExportFileName
                        Type           = '(RPC) PoSh'
                    }
                }
                elseif (($Entry -match '(RPC)') -and  $Entry -match 'WMI' -and ($Entry -notmatch '(WinRS)') -and ($Entry -notmatch '(WinRM)') -and $Entry.Checked) {                        
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_WMI
                        Properties     = $Command.Properties_WMI
                        ExportFileName = $Command.ExportFileName
                        Type           = "(RPC) WMI"
                    }
                }
                elseif ($Entry -match '(WinRM)' -and $Entry -match 'CMD' -and $Entry.Checked) {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_WinRM_CMD
                        ExportFileName = $Command.ExportFileName
                        Type           = "(WinRM) CMD"
                    }
                }
                elseif ($Entry -match '(WinRM)' -and $Entry -match 'Script' -and $Entry.Checked) {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_WinRM_Script
                        #Properties     = $Command.Properties_Script
                        ExportFileName = $Command.ExportFileName
                        Type           = "(WinRM) Script"
                    }
                }
                elseif ($Entry -match '(WinRM)' -and $Entry -match 'PoSh' -and $Entry.Checked) {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_WinRM_PoSh
                        Properties     = $Command.Properties_PoSh
                        ExportFileName = $Command.ExportFileName
                        Type           = '(WinRM) PoSh'
                    }
                }
                elseif ($Entry -match '(WinRM)' -and $Entry -match 'WMI' -and $Entry.Checked) {
                    $Command = $script:AllCommands | Where-Object Name -eq $(($Entry.Text -split ' -- ')[1])
                    $CommandsCheckedBoxesSelected += New-Object psobject @{ 
                        Name           = $Entry.Text
                        Command        = $Command.Command_WinRM_WMI
                        Properties     = $Command.Properties_WMI
                        ExportFileName = $Command.ExportFileName
                        Type           = "(WinRM) WMI"
                    }
                }                        
            }
        }
    }
}