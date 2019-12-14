@echo off
Setlocal EnableDelayedExpansion

call docker build . -t %1