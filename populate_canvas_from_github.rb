def read_github_file
  puts "Enter a filename in the current directory that contains a list of github URLs: "
  file_path = gets.chomp
  puts "Enter the course ID (int):"
  course_id = gets.chomp

  File.open(file_path.to_s, 'r') do |f|
    f.each_line do |path|  
      @path = clean_path(path)
      cmd = "github-to-canvas --create-from-github #{@path} --course #{course_id} --type #{lesson_type} --name #{file_name} -lr --forkable"
      system(cmd)
    end
  end
end

def lesson_type
    if @path.downcase.include?('note.md') || @path.downcase.include?('outline.md')
        'Page'
    else
        'Assignment'
    end
end

def file_name
    path_parts = @path.split('/')
    path_parts = path_parts[-1].split('__')
    # this string is run by a shell, so it should use escaped characters (`\ ` for space, etc.)
    path_parts[-2].gsub('%20', '\ ')
end

def clean_path(path)
  path = path.sub(/\n/,'')    
end


read_github_file