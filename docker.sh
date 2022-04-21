#!/bin/bash
sudo pacman -S docker
sudo usermod -aG docker $USER
sudo pacman -S docker-compose

