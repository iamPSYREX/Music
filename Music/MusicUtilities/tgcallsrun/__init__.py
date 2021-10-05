from os import listdir, mkdir
from pyrogram import Client
from Music import config
from Music.MusicUltilities.queues import (clear, get, is_empty, put, task_done)
from Music.MusicUltilities.downloader import download
from Music.MusicUltilities.convert import convert
from Music.MusicUltilities.music import run
from Music.MusicUltilities.music import smexy as ASS_ACC
smexy = 1
