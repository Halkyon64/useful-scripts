@echo off
Setlocal EnableDelayedExpansion

if [%2] == [] (
	call docker exec -it %1 /bin/bash
	exit /b
)

if NOT [%2] == [] (
	if %2 == sh (
		call docker exec -it %1 /bin/sh
	) else (
		call docker exec -it %1 /bin/bash
	)
	exit /b
)
