@echo off
Setlocal EnableDelayedExpansion

if [%1] == [] (
	call docker-compose up
	exit /b
)

if NOT [%1] == [] (
	if %1 == d (
		call docker-compose up -d
	) else (
		call docker-compose up
	)
	exit /b
)
