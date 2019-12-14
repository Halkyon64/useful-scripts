@echo off
Setlocal EnableDelayedExpansion

call docker image prune -f
call docker volume prune -f