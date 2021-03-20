@echo off 
chcp 1251
title Редактор Реестра
:fd
cd %appdata%
set papka=%appdata%:\RedaktorReestra
if not exist "%papka%\*.*" (goto soz)
:soz
cd %appdata%
mkdir RedaktorReestra
cd RedaktorReestra
if not exist "*.txt" (type nul > num.txt) 
if not exist "*.sh" (
(
echo git init
echo git add .
echo git commit -m "first commit"
echo git branch -M main
echo git remote add origin https://github.com/USERNAME/REPOSITORIES
echo git push -u origin main)>>git.sh
)
mkdir ObMenu
mkdir RaskrMenu
cd RaskrMenu
mkdir Razdel
mkdir Command
goto menu
:menu
set tim=%time:~,-3%
cd %appdata%
cd RedaktorReestra
if exist "savecolor.txt" (set color=color 0c)
if exist "chgree.txt" (set color=color 08)
if exist "chgree.txt" (set color=color 02)
if exist "chelil.txt" (set color=color 05)
if exist "cheye.txt" (set color=color 06)
if exist "chewhi.txt" (set color=color 07)
if exist "chewhiye.txt" (set color=color 0e)
if exist "poym.txt" (set color=color 03)
%color%
mode con: cols=60 lines=30
cls
title Редактор Реестра %tim%
echo 1)Создать обычное меню
echo 2)Создать раскрывающиеся меню
echo 3)Удалить меню
echo 4)Разное
echo 5)Настройки
echo 6)Выход
choice /c "12345" /N>nul
if %errorlevel%==1 (goto a1)
if %errorlevel%==2 (goto a2)
if %errorlevel%==3 (goto a3)
if %errorlevel%==4 (goto a7)
if %errorlevel%==5 (goto a8)
if %errorlevel%==6 (exit)
:a8
%color%
cls
title Цвета %tim%
echo 1)Черно-серый
echo 2)Черно-зеленый 
echo 3)Черно-лиловый
echo 4)Черно-желтый
echo 5)Черно-белый
echo 6)Черно-светло-желтый
echo 7)По умолчанию
echo 8)Вернуться в меню
choice /c "123456789" /N>nul
if %errorlevel%==1 (
cd %appdata%\RedaktorReestra
set color=color 08
rename savecolor.txt chegra.txt
rename chgree.txt chegra.txt
rename chelil.txt chegra.txt
rename cheye.txt chegra.txt
rename chewhi.txt chegra.txt
rename chewhiye.txt chegra.txt
rename poym.txt chegra.txt
rename num.txt chegra.txt)
if %errorlevel%==2 (
cd %appdata%\RedaktorReestra
set color=color 02
rename savecolor.txt chgree.txt
rename chegra.txt chgree.txt
rename chelil.txt chgree.txt
rename cheye.txt chgree.txt
rename chewhi.txt chgree.txt
rename chewhiye.txt chgree.txt
rename poym.txt chgree.txt
rename num.txt chgree.txt)
if %errorlevel%==3 (
cd %appdata%\RedaktorReestra
set color=color 05
rename savecolor.txt chelil.txt
rename chegra.txt chelil.txt
rename chgree.txt chelil.txt
rename cheye.txt chelil.txt
rename chewhi.txt chelil.txt
rename chewhiye.txt chelil.txt
rename poym.txt chelil.txt
rename num.txt chelil.txt)
if %errorlevel%==4 (
cd %appdata%\RedaktorReestra
set color=color 06
rename savecolor.txt cheye.txt
rename chegra.txt cheye.txt
rename chgree.txt cheye.txt
rename chelil.txt.txt cheye.txt
rename chewhi.txt cheye.txt
rename chewhiye.txt cheye.txt
rename poym.txt cheye.txt
rename num.txt cheye.txt)
if %errorlevel%==5 (
cd %appdata%\RedaktorReestra
set color=color 07
rename savecolor.txt chewhi.txt
rename chegra.txt chewhi.txt
rename chgree.txt chewhi.txt
rename chelil.txt chewhi.txt
rename cheye.txt chewhi.txt
rename chewhiye.txt chewhi.txt
rename poym.txt chewhi.txt
rename num.txt chewhi.txt)
if %errorlevel%==6 (
cd %appdata%\RedaktorReestra
set color=color 0e
rename savecolor.txt chewhiye.txt
rename chegra.txt chewhiye.txt
rename chgree.txt chewhiye.txt
rename chelil.txt chewhiye.txt
rename cheye.txt chewhiye.txt
rename chewhi.txt chewhiye.txt
rename poym.txt chewhiye.txt
rename num.txt chewhiye.txt)
if %errorlevel%==7 (
cd %appdata%\RedaktorReestra
set color=color 03
rename savecolor.txt poym.txt
rename chegra.txt poym.txt
rename chgree.txt poym.txt
rename chelil.txt poym.txt
rename cheye.txt poym.txt
rename chewhi.txt poym.txt
rename chewhiye.txt poym.txt
rename num.txt poym.txt)
if %errorlevel%==8 (goto menu)
goto a8
:a7
%color%
cls
title Разное %tim%
echo 1)Открыть редактор реестра
echo 2)Отобразить все файлы в обычном меню 
echo 3)Отобразить все файлы в раскрывающимся меню
echo 5)Вернуться в меню
echo 6)Выход
choice /c "123456" /N>nul
if %errorlevel%==1 (goto a4)
if %errorlevel%==2 (goto a5)
if %errorlevel%==3 (goto a6)
if %errorlevel%==4 (goto a93)
if %errorlevel%==5 (goto menu)
if %errorlevel%==6 (exit)
:a4
%color%
cls
regedit
goto menu
:a5 
%color%
cls
reg query hkcr\directory\background\shell\
pause
goto menu
:a6
%color%
cls
reg query hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell
pause
goto menu 
:a1
%color%
cls
title Создание обычного меню %tim%
echo 			Меню
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\ObMenu
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\ObMenu\*.reg") do echo.%%~na
echo ------------------------------------------------------------
echo 1)Создать обычное меню
echo 2)Готовые
echo 3)Вернуться в меню
echo 4)Выход
choice /c "1234" /N>nul
if %errorlevel%==1 (goto uy1)
if %errorlevel%==2 (goto uy2)
if %errorlevel%==3 (goto menu)
if %errorlevel%==4 (exit)
:uy2
cls
set m=
title Готовые %tim%
mode con: cols=100 lines=30
echo (1)ВыключитьКомпьютер I (2)Корзина                     I  (3)Перезагрузка
echo (4)Проводник          I (5)УстановкаИУдалениеПрограмм  I  (6)РедакторРеестра
echo (7)СвойстваМыши       I (8)КалибровкаЦветовЭкрана      I  (9)СвойстваЗвука
echo (a)ПанельУправления   I (b)СвойстваПапок               I  (c)Персонализация
echo (d)ДиспетчерЗадач     I (e)Сервисы                     I  (f)ИгровыеУстройства
echo (y)ПланировщикЗаданий I (u)УстройстваИПринтеры         I  (f)УчетныеЗаписиПользователей
echo (i)Администрирование  I (s)СвойстваСистемы             I  (g)СведенияОСистеме
echo (h)СвойстваЭкрана     I (i)СетевыеПодключения          I  (j)ДатаВремя
echo (k)СистемныйМонитор   I (l)УправлениеЭлектропитанием   I  (m)Язык
echo (n)КоманднаяСтрока    I (o)ЦентрОбеспеченияБезопасностиI  (p)Paint
echo (q)Дефрагментация     I (r)ВыйтиИзУчетнойЗаписи        I  (s)ОКомпьютере
echo             (9)ВернутьсяНазад	                (0)Выход
rem choice /c "123456789ABCDEFGHIJKLMNOPQRS" /N>nul
rem choice /c "123456789a" /N>nul
set /p bwrq=Введите: 
if %bwrq%==1 (goto kor)
if %bwrq%==2 (goto vkl)
if %bwrq%==3 (goto lkv)
if %bwrq%==4 (goto prov)
if %bwrq%==5 (goto prog)
if %bwrq%==6 (goto reg)
if %bwrq%==7 (goto mis)
if %bwrq%==8 (goto calcoec)
if %bwrq%==9 (goto menu)
if %bwrq%==a (goto pan)
if %bwrq%==b (goto sv)

:kor 
title Корзина %tim%
set kor=Корзина
set kor2=Введите расположение иконки: none
set /p kor3=Введите позицию(Top; Bottom): 
set kor4=Корзина
set kor5=explorer shell:RecycleBinFolder
rem ДОБАВИТЬ ИКОНКУ
reg add "hkcr\directory\background\shell\\"%kor%"" /v "Icon" /t reg_sz /d "%kor2%" /f
reg add "hkcr\directory\background\shell\\"%kor%"" /v "Position" /t reg_sz /d "%kor3%" /f
reg add "hkcr\directory\background\shell\\"%kor%"" /v "MUIVerb" /t reg_sz /d "%kor4%" /f
reg add "hkcr\directory\background\shell\\"%kor%"\Command" /t reg_sz /d "%kor5%" /f
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %kor%
echo %kor2%
echo %kor3%
echo %kor4%
)>>%kor%.reg
goto uy2
:vkl
title Выключение %tim%
set vkl=Выключение
set vkl2=Введите расположение иконки: none
set /p vkl3=Введите позицию(Top; Bottom): 
set vkl4=Выключение
set vkl5=shutdown /s /t 1 /f 
rem ДОБАВИТЬ ИКОНКУ
reg add "hkcr\directory\background\shell\\"%vkl%"" /v "Icon" /t reg_sz /d "%vkl2%" /f
reg add "hkcr\directory\background\shell\\"%vkl%"" /v "Position" /t reg_sz /d "%vkl3%" /f
reg add "hkcr\directory\background\shell\\"%vkl%"" /v "MUIVerb" /t reg_sz /d "%vkl4%" /f
reg add "hkcr\directory\background\shell\\"%vkl%"\Command" /t reg_sz /d "%vkl5%" /f
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %vkl%
echo %vkl2%
echo %vkl3%
echo %vkl4%
)>>%vkl%.reg
goto uy2
:lkv
title Перезагрузка %tim%
set lkv=Перезагрузка
set lkv2=Введите расположение иконки: none
set /p lkv3=Введите позицию(Top; Bottom): 
set lkv4=Перезагрузка
set lkv5=shutdown /r /t 1 /f
rem ДОБАВИТЬ ИКОНКУ
reg add "hkcr\directory\background\shell\\"%lkv%"" /v "Icon" /t reg_sz /d "%lkv2%" /f
reg add "hkcr\directory\background\shell\\"%lkv%"" /v "Position" /t reg_sz /d "%lkv3%" /f
reg add "hkcr\directory\background\shell\\"%lkv%"" /v "MUIVerb" /t reg_sz /d "%lkv4%" /f
reg add "hkcr\directory\background\shell\\"%lkv%"\Command" /t reg_sz /d "%lkv5%" /f
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %lkv%
echo %lkv2%
echo %lkv3%
echo %lkv4%
)>>%lkv%.reg
goto uy2
:prov
title Проводник %tim%
set prov=Проводник
set prov2=Введите расположение иконки: none
set /p prov3=Введите позицию(Top; Bottom): 
set prov4=Проводник
set prov5=explorer
rem ДОБАВИТЬ ИКОНКУ
reg add "hkcr\directory\background\shell\\"%prov%"" /v "Icon" /t reg_sz /d "%prov2%" /f
reg add "hkcr\directory\background\shell\\"%prov%"" /v "Position" /t reg_sz /d "%prov3%" /f
reg add "hkcr\directory\background\shell\\"%prov%"" /v "MUIVerb" /t reg_sz /d "%prov4%" /f
reg add "hkcr\directory\background\shell\\"%prov%"\Command" /t reg_sz /d "%prov5%" /f
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %prov%
echo %prov2%
echo %prov3%
echo %prov4%
)>>%prov%.reg
goto uy2
:prog
title Установка и удаление программ %tim%
set prog=Программы
set prog2=Введите расположение иконки: none
set /p prog3=Введите позицию(Top; Bottom): 
set prog4=Программы
set prog5=appwiz
rem ДОБАВИТЬ ИКОНКУ
reg add "hkcr\directory\background\shell\\"%prog%"" /v "Icon" /t reg_sz /d "%prog2%" /f
reg add "hkcr\directory\background\shell\\"%prog%"" /v "Position" /t reg_sz /d "%prog3%" /f
reg add "hkcr\directory\background\shell\\"%prog%"" /v "MUIVerb" /t reg_sz /d "%prog4%" /f
reg add "hkcr\directory\background\shell\\"%prog%"\Command" /t reg_sz /d "%prog5%" /f
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %prog%
echo %prog2%
echo %prog3%
echo %prog4%
)>>%prog%.reg
goto uy2
:reg
title Редактор Реестра %tim%
set reg=РедакторРеестра
set reg2=Введите расположение иконки: none
set /p reg3=Введите позицию(Top; Bottom): 
set reg4=РедакторРеестра
set reg5=regedit
rem ДОБАВИТЬ ИКОНКУ
reg add "hkcr\directory\background\shell\\"%reg%"" /v "Icon" /t reg_sz /d "%reg2%" /f
reg add "hkcr\directory\background\shell\\"%reg%"" /v "Position" /t reg_sz /d "%reg3%" /f
reg add "hkcr\directory\background\shell\\"%reg%"" /v "MUIVerb" /t reg_sz /d "%reg4%" /f
reg add "hkcr\directory\background\shell\\"%reg%"\Command" /t reg_sz /d "%reg5%" /f
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %reg%
echo %reg2%
echo %reg3%
echo %reg4%
)>>%reg%.reg
goto uy2
:mis
title Свойства мыши %tim%
set mis=СвойстваМыши
set mis2=Введите расположение иконки: none
set /p mis3=Введите позицию(Top; Bottom): 
set mis4=Мышь
set mis5=control mouse
rem ДОБАВИТЬ ИКОНКУ
reg add "hkcr\directory\background\shell\\"%mis%"" /v "Icon" /t reg_sz /d "%mis2%" /f
reg add "hkcr\directory\background\shell\\"%mis%"" /v "Position" /t reg_sz /d "%mis3%" /f
reg add "hkcr\directory\background\shell\\"%mis%"" /v "MUIVerb" /t reg_sz /d "%mis4%" /f
reg add "hkcr\directory\background\shell\\"%mis%"\Command" /t reg_sz /d "%mis5%" /f
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %mis%
echo %mis2%
echo %mis3%
echo %mis4%
)>>%mis%.reg
goto uy2
:calcoec
title КалибровкаЦветовЭкрана %tim%
set calcoec=КалибровкаЦветовЭкрана
set calcoec2=Введите расположение иконки: none
set /p calcoec3=Введите позицию(Top; Bottom): 
set calcoec4=Цвета
set calcoec5=dccw
rem ДОБАВИТЬ ИКОНКУ
reg add "hkcr\directory\background\shell\\"%calcoec%"" /v "Icon" /t reg_sz /d "%calcoec2%" /f
reg add "hkcr\directory\background\shell\\"%calcoec%"" /v "Position" /t reg_sz /d "%calcoec3%" /f
reg add "hkcr\directory\background\shell\\"%calcoec%"" /v "MUIVerb" /t reg_sz /d "%calcoec4%" /f
reg add "hkcr\directory\background\shell\\"%calcoec%"\Command" /t reg_sz /d "%calcoec5%" /f
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %calcoec%
echo %calcoec2%
echo %calcoec3%
echo %calcoec4%
)>>%calcoec%.reg
goto uy2
:pan
title Панель Управления %tim%
set pan=ПанельУправления
set pan2=Введите расположение иконки: none
set /p pan3=Введите позицию(Top; Bottom): 
set pan4=ПанельУправления
set pan5=control
rem ДОБАВИТЬ ИКОНКУ
reg add "hkcr\directory\background\shell\\"%pan%"" /v "Icon" /t reg_sz /d "%pan2%" /f
reg add "hkcr\directory\background\shell\\"%pan%"" /v "Position" /t reg_sz /d "%pan3%" /f
reg add "hkcr\directory\background\shell\\"%pan%"" /v "MUIVerb" /t reg_sz /d "%pan4%" /f
reg add "hkcr\directory\background\shell\\"%pan%"\Command" /t reg_sz /d "%pan5%" /f
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %pan%
echo %pan2%
echo %pan3%
echo %pan4%
)>>%pan%.reg
goto uy2
:sv
title Свойства папок %tim%
set sv=СвойстваПапок
set sv2=Введите расположение иконки: none
set /p sv3=Введите позицию(Top; Bottom): 
set sv4=СвойстваПапок
set sv5=control folders
rem ДОБАВИТЬ ИКОНКУ
reg add "hkcr\directory\background\shell\\"%sv%"" /v "Icon" /t reg_sz /d "%sv2%" /f
reg add "hkcr\directory\background\shell\\"%sv%"" /v "Position" /t reg_sz /d "%sv3%" /f
reg add "hkcr\directory\background\shell\\"%sv%"" /v "MUIVerb" /t reg_sz /d "%sv4%" /f
reg add "hkcr\directory\background\shell\\"%sv%"\Command" /t reg_sz /d "%sv5%" /f
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %sv%
echo %sv2%
echo %sv3%
echo %sv4%
)>>%sv%.reg
goto uy2

:uy1
%color%
cls
title Создание обычного меню %tim%
echo ------------------------------------------------------------
set /p name1=Введите название раздела: 
set /p name2=Введите расположение иконки: 
set /p name3=Введите позицию(Top; Bottom): 
set /p name4=Введите название: 
set /p name5=Введите Команду:
set name6=explorer %name5%
echo ------------------------------------------------------------
reg add "hkcr\directory\background\shell\\"%name1%"" /v "Icon" /t reg_sz /d "%name2%"
reg add "hkcr\directory\background\shell\\"%name1%"" /v "Position" /t reg_sz /d "%name3%"
reg add "hkcr\directory\background\shell\\"%name1%"" /v "MUIVerb" /t reg_sz /d "%name4%"
reg add "hkcr\directory\background\shell\\"%name1%"\Command" /t reg_sz /d "%name6%"
::====================================================================================================
set rfq1=reg add "hkcr\directory\background\shell\\"%name1%"" /v "Icon" /t reg_sz /d "%name2%"
set rfq2=reg add "hkcr\directory\background\shell\\"%name1%"" /v "Position" /t reg_sz /d "%name3%"
set rfq3=reg add "hkcr\directory\background\shell\\"%name1%"" /v "MUIVerb" /t reg_sz /d "%name4%"
set rfq4=reg add "hkcr\directory\background\shell\\"%name1%"\Command" /t reg_sz /d "%name5%"
::====================================================================================================
cd %appdata%
cd RedaktorReestra\ObMenu
(
echo %rfq1%
echo %rfq2%
echo %rfq3%
echo %rfq4%
echo %rfq4%
)>>%name1%.reg
set cn=
:adver
If Exist "tim%cn%.reg" Set /a cn+=1& Goto adver
Copy "%name1%_%name4%.reg" "%name1%_%name4%%cn%.reg"
goto a1
:a2 
%color%
cls
title Раскрывающееся меню %tim%
echo 			Меню
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Command
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\RaskrMenu\Command\*.reg") do echo.%%~na
echo 			Раздел
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Razdel
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\RaskrMenu\Razdel\*.reg") do echo.%%~na
echo ------------------------------------------------------------
echo 1)Создать команду
echo 2)Создать раздел
echo 3)Вернуться назад
echo 4)Выход
choice /c "1234" /N>nul
if %errorlevel%==1 (goto b1)
if %errorlevel%==2 (goto b2)
if %errorlevel%==3 (goto menu)
if %errorlevel%==4 (exit)
:a3
color 0c
cls 
title Удаление %tim%
echo 1)Удалить обычное меню
echo 2)Удалить раскрывающиеся меню
echo 3)Помощь
echo 4)Вернуться назад
echo 5)Выход
choice /c "1234" /N>nul
if %errorlevel%==1 (goto d1)
if %errorlevel%==2 (goto d2)
if %errorlevel%==3 (goto d3)
if %errorlevel%==4 (goto menu)
if %errorlevel%==5 (exit)
:d3
echo Ничего
pause
goto a3
:d1
color 0c
cls
title Удаление %tim%
echo 			Меню
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\ObMenu
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\ObMenu\*.reg") do echo.%%~na
echo ------------------------------------------------------------
::reg query hkcr\directory\background\shell\
set /p f1=Введите название раздела: 
reg delete "hkcr\directory\background\shell\\"%f1%"" /f
del %f1%.reg
goto a3
:d2
cls 
color 0c
title Удаление %tim%
echo 			Меню
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Command
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\RaskrMenu\Command\*.reg") do echo.%%~na
echo 			Раздел
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Razdel
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\RaskrMenu\Razdel\*.reg") do echo.%%~na
echo ------------------------------------------------------------
echo 1)Удалить команду
echo 2)Удалить раздел
echo 3)Вернуться назад
echo 4)Выход
choice /c "1234" /N>nul
if %errorlevel%==1 (goto y1)
if %errorlevel%==2 (goto y2)
if %errorlevel%==3 (goto a3)
if %errorlevel%==4 (exit)
:y1
color 0c
cls
title Удаление %tim%
echo 			Меню
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Command
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\RaskrMenu\Command\*.reg") do echo.%%~na
echo ------------------------------------------------------------
::reg query hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell
set /p f2=Введите название раздела: 
reg delete "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%f2%"" /f
del %f2%.reg
goto d2
:y2
cls
color 0c
title Удаление %tim%
echo 			Раздел
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Razdel
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\RaskrMenu\Razdel\*.reg") do echo.%%~na
echo ------------------------------------------------------------
set /p f2=Введите название раздела: 
reg delete "hkcr\directory\background\shell\\"%f2%"" /f
del %f2%.reg
goto d2
:b1
%color%
cls 
title Создание команды %tim%
echo 			Меню
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Command
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\RaskrMenu\Command\*.reg") do echo.%%~na
echo ------------------------------------------------------------
set /p name0=Введите имя раздела: 
set /p name01=Введите расположение иконки: 
set /p name02=Введите название команды: 
set /p name03=Введите команду:
set name04=explorer %name03% 
echo ------------------------------------------------------------
reg add "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%name0%"" /v "Icon" /t reg_sz /d "%name01%"
reg add "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%name0%"" /v "MUIVerb" /t reg_sz /d "%name02%"
reg add "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%name0%"\Command" /t reg_sz /d "%name04%"
::====================================================================================================
set eman1=reg add "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%name0%"" /v "Icon" /t reg_sz /d "%name01%"
set eman2=reg add "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%name0%"" /v "MUIVerb" /t reg_sz /d "%name02%"
set eman3=reg add "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%name0%"\Command" /t reg_sz /d "%name03%"
::====================================================================================================
cd %appdata%
cd RedaktorReestra\RaskrMenu\Command
(
echo %eman1%
echo %eman2%
echo %eman3%
)>>%name0%.reg
::%name0%_%name02%.reg
set cn=
:adver
If Exist "tim%cn%.reg" Set /a cn+=1& Goto adver
::Copy "%name0%_%name02%.reg" "%name0%_%name02%%cn%.reg"
Copy "%name0%.reg" "%name0%%cn%.reg"
goto a2
:b2
%color%
cls
title Создание раздела %tim%
echo 			Меню
echo ------------------------------------------------------------
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\RaskrMenu\Command\*.reg") do echo.%%~na
echo 			Раздел
echo ------------------------------------------------------------
SetLocal EnableDelayedExpansion
for %%a in ("%appdata%\RedaktorReestra\RaskrMenu\Razdel\*.reg") do echo.%%~na
echo ------------------------------------------------------------
set /p name1=Введите название раздела: 
set /p name2=Введите расположение иконки: 
set /p name3=Введите позицию(Top; Bottom): 
set /p name4=Введите название: 
echo Через ";"
set /p name6=Перечислите Команды: 
reg add "hkcr\directory\background\shell\\"%name1%"" /v "Icon" /t reg_sz /d "%name2%"
reg add "hkcr\directory\background\shell\\"%name1%"" /v "Position" /t reg_sz /d "%name3%"
reg add "hkcr\directory\background\shell\\"%name1%"" /v "MUIVerb" /t reg_sz /d "%name4%"
reg add "hkcr\directory\background\shell\\"%name1%"" /v "SubCommands" /t reg_sz /d "%name6%" 
::====================================================================================================
set fdhdb1=reg add "hkcr\directory\background\shell\\"%name1%"" /v "Icon" /t reg_sz /d "%name2%"
set fdhdb2=reg add "hkcr\directory\background\shell\\"%name1%"" /v "Position" /t reg_sz /d "%name3%"
set fdhdb3=reg add "hkcr\directory\background\shell\\"%name1%"" /v "MUIVerb" /t reg_sz /d "%name4%"
set fdhdb4=reg add "hkcr\directory\background\shell\\"%name1%"" /v "SubCommands" /t reg_sz /d "%name6%"
::====================================================================================================
cd %appdata%
cd RedaktorReestra\RaskrMenu\Razdel
(
echo %fdhdb1%
echo %fdhdb2%
echo %fdhdb3%
echo %fdhdb4%
)>>%name1%.reg
::%name1%_%name4%.reg
set cn=
:adver
If Exist "tim%cn%.reg" Set /a cn+=1& Goto adver
::Copy "%name1%_%name4%.reg" "%name1%_%name4%%cn%.reg"
Copy "%name1%.reg" "%name1%%cn%.reg"
goto a2
:a93
%color%
cls
title Просто %tim%
echo   _________   ______     ________   ___       ___  
echo  (_   _____) (   __ \   (___  ___) (  (       )  ) 
echo    ) (___     ) (__) )      ) )     \  \  _  /  /  
echo   (   ___)   (    __/      ( (       \  \/ \/  /   
echo    ) (        ) \ \  _      ) )       )   _   (    
echo   (   )      ( ( \ \_))    ( (        \  ( )  /    
echo    \_/        )_) \__/     /__\        \_/ \_/
timeout 1 /nobreak     
color 02
cls
title Редактор Реестра %tim%
echo   _________   ______     ________   ___       ___  
echo  (_   _____) (   __ \   (___  ___) (  (       )  ) 
echo    ) (___     ) (__) )      ) )     \  \  _  /  /  
echo   (   ___)   (    __/      ( (       \  \/ \/  /   
echo    ) (        ) \ \  _      ) )       )   _   (    
echo   (   )      ( ( \ \_))    ( (        \  ( )  /    
echo    \_/        )_) \__/     /__\        \_/ \_/
timeout 1 /nobreak     
color 03
cls
title Редактор Реестра %tim%
echo   _________   ______     ________   ___       ___  
echo  (_   _____) (   __ \   (___  ___) (  (       )  ) 
echo    ) (___     ) (__) )      ) )     \  \  _  /  /  
echo   (   ___)   (    __/      ( (       \  \/ \/  /   
echo    ) (        ) \ \  _      ) )       )   _   (    
echo   (   )      ( ( \ \_))    ( (        \  ( )  /    
echo    \_/        )_) \__/     /__\        \_/ \_/
timeout 1 /nobreak     
color 04
cls
title Редактор Реестра %tim%
echo   _________   ______     ________   ___       ___  
echo  (_   _____) (   __ \   (___  ___) (  (       )  ) 
echo    ) (___     ) (__) )      ) )     \  \  _  /  /  
echo   (   ___)   (    __/      ( (       \  \/ \/  /   
echo    ) (        ) \ \  _      ) )       )   _   (    
echo   (   )      ( ( \ \_))    ( (        \  ( )  /    
echo    \_/        )_) \__/     /__\        \_/ \_/
timeout 1 /nobreak     
color 05
cls
title Редактор Реестра %tim%
echo   _________   ______     ________   ___       ___  
echo  (_   _____) (   __ \   (___  ___) (  (       )  ) 
echo    ) (___     ) (__) )      ) )     \  \  _  /  /  
echo   (   ___)   (    __/      ( (       \  \/ \/  /   
echo    ) (        ) \ \  _      ) )       )   _   (    
echo   (   )      ( ( \ \_))    ( (        \  ( )  /    
echo    \_/        )_) \__/     /__\        \_/ \_/
timeout 1 /nobreak     
goto menu                                                  