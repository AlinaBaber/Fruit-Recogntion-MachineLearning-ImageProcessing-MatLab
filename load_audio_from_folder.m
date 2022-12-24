function [audio_signals] = load_audio_from_folder(output_folder)
    audio_signals = {};

    %load 'speech.mat'; 
    for word_folder = struct2cell(dir(output_folder))
        for word_file = struct2cell(dir(sprintf('%s/*.png',output_folder, char(word_folder(1)))))
           file_path = sprintf('%s/%s', audio_folder, char(word_folder(1)), char(word_file(1)));
            
            audio_signals(end + 1) = {file_path}; %#ok<AGROW>

                
        end
    end

     
end