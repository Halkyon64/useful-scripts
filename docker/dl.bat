@echo off
Setlocal EnableDelayedExpansion

if [%2] == [] (
	call docker logs %1 --tail 100
	exit /b
)

if NOT [%2] == [] (
	if %2 == f (
		call docker logs %1 --tail 100 -f
	) else (
		call docker logs %1 --tail 100
	)
	exit /b
)
