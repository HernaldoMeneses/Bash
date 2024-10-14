#!/bin/bash
user=hernaldomeneses
read -p "Nome do Repositorios:" repositorio
git clone git@github.com:$user/$repositorio.git
