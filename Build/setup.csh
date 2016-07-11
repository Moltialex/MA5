#!/bin/csh -f

# Defining colours for shell
set GREEN  = "\033[1;32m"
set RED    = "\033[1;31m"
set PINK   = "\033[1;35m"
set BLUE   = "\033[1;34m"
set YELLOW = "\033[1;33m"
set CYAN   = "\033[1;36m"
set NORMAL = "\033[0;39m"

# Configuring MA5 environment variable
setenv MA5_BASE /media/ouroboros/Donnee/Ubuntu/madanalysis5

# Configuring PATH environment variable
if ( $?PATH ) then
setenv PATH $MA5_BASE/tools/fastjet/bin:"$PATH":/media/ouroboros/Donnee/Master/Stage/root/racine/bin
else
setenv PATH $MA5_BASE/tools/fastjet/bin:/media/ouroboros/Donnee/Master/Stage/root/racine/bin
endif

# Configuring LD_LIBRARY_PATH environment variable
if ( $?LD_LIBRARY_PATH ) then
setenv LD_LIBRARY_PATH $MA5_BASE/tools/SampleAnalyzer/Lib/:$MA5_BASE/tools/fastjet/lib:$MA5_BASE/tools/zlib/lib:$MA5_BASE/tools/delphes/:"$LD_LIBRARY_PATH":/media/ouroboros/Donnee/Master/Stage/root/racine/lib/root
else
setenv LD_LIBRARY_PATH $MA5_BASE/tools/SampleAnalyzer/Lib/:$MA5_BASE/tools/fastjet/lib:$MA5_BASE/tools/zlib/lib:$MA5_BASE/tools/delphes/:/media/ouroboros/Donnee/Master/Stage/root/racine/lib/root
endif

# Checking that all environment variables are defined
if ( $?MA5_BASE && $?PATH && $?LD_LIBRARY_PATH ) then
echo $YELLOW"--------------------------------------------------------"
echo "    Your environment is properly configured for MA5     "
echo "--------------------------------------------------------"$NORMAL
endif
