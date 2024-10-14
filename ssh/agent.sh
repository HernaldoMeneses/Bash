#!/bin/bash
echo 'Acionar eval background'
eval "$(ssh-agent -s)"
ls -l ~/.ssh
echo
echo 'adeicionar chave especifica'
echo '---- id_ed25519  ----'
ssh-add ~/.ssh/id_ed25519
echo '---------------------------'
