Write-Host "=== ОБНОВЛЕНО ЧЕРЕЗ PYTHON API ==="
Write-Host "Дата обновления: $(Get-Date)"
Write-Host "Компьютер: $env:COMPUTERNAME"
Write-Host "Пользователь: $env:USERNAME"

# Получаем информацию о системе
$os = Get-WmiObject -Class Win32_OperatingSystem
Write-Host "ОС: $($os.Caption)"
Write-Host "Версия: $($os.Version)"

# Показываем запущенные процессы
Write-Host "`nТоп-5 процессов по использованию CPU:"
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5 | Format-Table Name, CPU, WorkingSet -AutoSize

Write-Host "`nСкрипт успешно обновлен через GitHub API!"
Write-Host "Ждем 10 секунд..."
Timeout /T 10
