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
dir /b
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
title Готовые %tim%
mode con: cols=100 lines=30
echo (1)Корзина            ! (2)ВыключитьКомпьютер          !  (3)Перезагрузка
echo (4)Проводник          ! (5)УстановкаИУдалениеПрограмм  !  (6)РедакторРеестра
echo (7)СвойстваМыши       ! (8)КалибровкаЦветовЭкрана      !  (9)СвойстваЗвука
echo (a)ПанельУправления   ! (b)СвойстваПапок               !  (c)Персонализация
echo (d)Шрифты             ! (e)СвойстваКлавиатуры          !  (f)ИгровыеУстройства
echo (y)ПланировщикЗаданий ! (u)УстройстваИПринтеры         !  (f)УчетныеЗаписиПользователей
echo (i)Администрирование  ! (s)СвойстваСистемы             !  (g)СведенияОСистеме
echo (h)СвойстваЭкрана     ! (i)СетевыеПодключения          !  (j)ДатаВремя
echo (k)СистемныйМонитор   ! (l)УправлениеЭлектропитанием   !  (m)Язык
echo (n)КоманднаяСтрока    ! (o)ЦентрОбеспеченияБезопасности!  (p)Paint
echo (q)Дефрагментация     ! (r)ВыйтиИзУчетнойЗаписи        !  (s)ОКомпьютере
echo             (9)ВернутьсяНазад	                (0)Выход
rem choice /c "0123456789ABCDEFGHIJKLMNOPQRS" /N>nul
choice /c "09" /N>nul
if %errorlevel%==0 (exit)
if %errorlevel%==9 (pause)







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
echo ------------------------------------------------------------
reg add "hkcr\directory\background\shell\\"%name1%"" /v "Icon" /t reg_sz /d "%name2%"
reg add "hkcr\directory\background\shell\\"%name1%"" /v "Position" /t reg_sz /d "%name3%"
reg add "hkcr\directory\background\shell\\"%name1%"" /v "MUIVerb" /t reg_sz /d "%name4%"
reg add "hkcr\directory\background\shell\\"%name1%"\Command" /t reg_sz /d "%name5%"
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
dir /b
echo 			Раздел
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Razdel
dir /b
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
echo Чтобы удалить несколько файлов поставьте ";"
goto a3
:d1
color 0c
cls
title Удаление %tim%
echo 			Меню
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\ObMenu
dir /b
echo ------------------------------------------------------------
::reg query hkcr\directory\background\shell\
set /p f1=Введите название раздела: 
reg delete "hkcr\directory\background\shell\\"%f1%"" /f
del %f1%.reg
goto a3
:d2
cls 
title Удаление %tim%
echo 			Меню
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Command
dir /b
echo 			Раздел
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Razdel
dir /b
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
%color%
cls
title Удаление %tim%
echo 			Меню
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Command
dir /b
echo ------------------------------------------------------------
::reg query hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell
set /p f2=Введите название раздела: 
reg delete "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%f2%"" /f
del %f2%.reg
goto d2
:y2
cls
title Удаление %tim%
echo 			Раздел
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Razdel
dir /b
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
dir /b
echo ------------------------------------------------------------
set /p name0=Введите имя раздела: 
set /p name01=Введите расположение иконки: 
set /p name02=Введите название команды: 
set /p name03=Введите команду: 
echo ------------------------------------------------------------
reg add "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%name0%"" /v "Icon" /t reg_sz /d "%name01%"
reg add "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%name0%"" /v "MUIVerb" /t reg_sz /d "%name02%"
reg add "hklm\software\microsoft\windows\currentversion\explorer\commandstore\shell\\"%name0%"\Command" /t reg_sz /d "%name03%"
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
cd %appdata%		
cd RedaktorReestra\RaskrMenu\Command
dir /b
echo 			Раздел
echo ------------------------------------------------------------
cd %appdata%
cd RedaktorReestra\RaskrMenu\Razdel
dir /b
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