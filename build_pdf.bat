@echo off
docker-compose up -d
docker-compose exec latex_maker latexmk -pdfdvi main.tex
docker-compose down