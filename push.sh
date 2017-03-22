#!/bin/bash

# USAGE:
# $ ./push.sh [target]
# $ ./push.sh              # default staging1 push
# $ ./push.sh --staging1   # identical to above
# $ ./push.sh --staging2   # specific push to staging2
# $ ./push.sh --prod       # push live

if [[ $@ == **--prod** ]]
then
  echo "Pushing to production..."
  rsync -arvP dist/ drew@maxrelax.co:/sites/periodicaudio/live
  rsync -arvP --exclude "*.mp4" --exclude "fullres/*" src/assets/images drew@maxrelax.co:/sites/periodicaudio/live
  rsync -arvP src/assets/videos drew@maxrelax.co:/sites/periodicaudio/live
  rsync -arvP src/assets/models drew@maxrelax.co:/sites/periodicaudio/live
  echo "–––––––––––––––––––––––––––––––––––––––––––––"
  echo "Pushed to production at: periodicaudio.com"
  echo "–––––––––––––––––––––––––––––––––––––––––––––"
elif [[ $@ == **--staging2** ]]
then
  ssh drew@maxrelax.co "rm /sites/periodicaudio/staging2/*.*";
  rsync -arvP dist/ drew@maxrelax.co:/sites/periodicaudio/staging2
  rsync -arvP --exclude "*.mp4" --exclude "fullres/*" src/assets/images   drew@maxrelax.co:/sites/periodicaudio/staging2
  rsync -arvP src/assets/videos drew@maxrelax.co:/sites/periodicaudio/staging2
  rsync -arvP src/assets/models   drew@maxrelax.co:/sites/periodicaudio/staging2
  echo "–––––––––––––––––––––––––––––––––––––––––––––"
  echo "Pushed to staging at: periodicaudio2.maxrelax.co"
  echo "–––––––––––––––––––––––––––––––––––––––––––––"
elif [[ $@ == **--staging3** ]]
then
  ssh drew@maxrelax.co "rm /sites/periodicaudio/staging3/*.*";
  rsync -arvP dist/ drew@maxrelax.co:/sites/periodicaudio/staging3
  rsync -arvP --exclude "*.mp4" --exclude "fullres/*" src/assets/images   drew@maxrelax.co:/sites/periodicaudio/staging3
  rsync -arvP src/assets/videos drew@maxrelax.co:/sites/periodicaudio/staging3
  rsync -arvP src/assets/models   drew@maxrelax.co:/sites/periodicaudio/staging3
  echo "–––––––––––––––––––––––––––––––––––––––––––––"
  echo "Pushed to staging at: periodicaudio3.maxrelax.co"
  echo "–––––––––––––––––––––––––––––––––––––––––––––"
else
  ssh drew@maxrelax.co "rm /sites/periodicaudio/staging1/*.*";
  rsync -arvP dist/ drew@maxrelax.co:/sites/periodicaudio/staging1
  rsync -arvP --exclude "*.mp4" --exclude "fullres/*" src/assets/images   drew@maxrelax.co:/sites/periodicaudio/staging1
  rsync -arvP src/assets/videos drew@maxrelax.co:/sites/periodicaudio/staging1
  rsync -arvP src/assets/models   drew@maxrelax.co:/sites/periodicaudio/staging1
  echo "–––––––––––––––––––––––––––––––––––––––––––––"
  echo "Pushed to staging at: periodicaudio1.maxrelax.co"
  echo "–––––––––––––––––––––––––––––––––––––––––––––"
fi

