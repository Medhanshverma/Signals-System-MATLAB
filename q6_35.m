% Given data
fs = 8000; % Sample rate (samples/second)
fc_cascaded = 2500; % Center frequency of the cascaded filter's passband (Hz)

% Musical note frequencies from the table
note_freq = [261.626, 277.183, 293.665, 311.127, 329.628, 349.228, ...
             369.994, 391.995, 415.305, 440.0, 466.164, 493.883, ...
             523.251, 554.365, 587.330, 622.254];

note_names = {'C4', 'C#4', 'D4', 'D#4', 'E4', 'F4', 'F#4', 'G4', ...
              'G#4', 'A4', 'A#4', 'B4', 'C5', 'C#5', 'D5', 'D#5'};

% Find the closest musical note to the center frequency
[min_diff, idx] = min(abs(note_freq - fc_cascaded));

closest_note = note_names{idx};
closest_freq = note_freq(idx);

% Display the result
fprintf('The musical note closest to the center frequency of the cascaded filter is %s.\n', closest_note);
fprintf('Center frequency of the cascaded filter: %.2f Hz\n', fc_cascaded);
fprintf('Frequency of the closest musical note: %.2f Hz\n', closest_freq);