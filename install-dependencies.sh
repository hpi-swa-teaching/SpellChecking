sudo apt install libhunspell-1.6-0
SPCDIR=SWT2019Trunk.app/Contents/Resources/dictionaries
SPCDIR_EN=$SPCDIR/english
SPCDIR_DE=$SPCDIR/german
mkdir -p $SPCDIR_DE $SPCDIR_EN
AFFIX_EN=${1}/en_US.aff
AFFIX_DE=${1}/de_DE.aff
DICT_EN=${1}/en_US.dic
DICT_DE=${1}/de_DE.dic

cp $AFFIX_EN $SPCDIR_EN
cp $DICT_EN $SPCDIR_EN
cp $AFFIX_DE $SPCDIR_DE
cp $DICT_DE $SPCDIR_DE

