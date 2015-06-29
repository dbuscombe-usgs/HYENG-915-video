#create original avi, full res
mencoder -oac copy -ovc copy caption_start_a.avi caption_start_b.avi caption_start_c.avi caption_start_d.avi caption_start_e.avi movie_start.avi caption_toframe53_a.avi caption_toframe53_b.avi caption_toframe53_c.avi caption_toframe53_d.avi caption_toframe53_e.avi caption_toframe53_f.avi movie1_to53.avi caption_transition_a.avi caption_transition_b.avi caption_transition_c.avi caption_transition_d.avi caption_transition_e.avi caption_transition_f.avi caption_transition_g.avi caption_transition_h.avi caption_transition_i.avi movie_2c.avi movie_filler2.avi movie1_from53.avi movie_end2.avi caption_endtransition_a.avi caption_endtransition_b.avi caption_endtransition_c.avi -o sidescan_texture_windowing_example_v2_withcaptions.avi

#create avi format, low res
ffmpeg -i sidescan_texture_windowing_example_v2_withcaptions.avi -vf scale=1280:960 BuscombeEtAl2015_JHydraulicEng_SupplementalData.avi

#create wmv format
ffmpeg -i sidescan_texture_windowing_example_v2_withcaptions.avi -s 1280x960 -b 1000k -vcodec wmv2 -ar 44100 -ab 56000 -ac 2 -y BuscombeEtAl2015_JHydraulicEng_SupplementalData.wmv

#create mov format
ffmpeg -i sidescan_texture_windowing_example_v2_withcaptions.avi -vf scale=1280:960 BuscombeEtAl2015_JHydraulicEng_SupplementalData.mov

#create mp4 format
ffmpeg -i sidescan_texture_windowing_example_v2_withcaptions.avi -codec:v libx264 -crf 23 -preset medium -codec:a libfdk_aac -vbr 4 -movflags faststart -vf scale=-1:720,format=yuv420p BuscombeEtAl2015_JHydraulicEng_SupplementalData.mp4
