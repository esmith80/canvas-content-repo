require 'cgi'

def create_lessons
  # puts "Enter a filename in the current directory that contains a list of github URLs: "
  # file_path = gets.chomp
  # puts "Enter the course ID (int):"
  # course_id = gets.chomp

  file_path = 'short_filenames.txt'
  course_id = 3

  File.open(file_path.to_s, 'r') do |f|
    f.each_line do |path|  
      @path = clean_path(path)
      cmd = "github-to-canvas --create-from-github #{@path} --course #{course_id} --type #{lesson_type} --name #{lesson_name} -lr --forkable"
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

def lesson_name
    path_parts = @path.split('/')
    path_parts = path_parts[-1].split('__')
    # this string is run by a shell, so it should use escaped characters (`\ ` for space, etc.)
    name = path_parts[-2].gsub('%20', '\ ')
    name = name.gsub(/%3F/, '?')
    # HACKY - turn 's in to "is a" having a single quote in the cmd is causing grief (isn't there a better way?)
    name = name.gsub(/%27s/, '\ is\ a')
end

def clean_path(path)
  path = path.sub(/\n/,'')
  path = URI.escape(path)
  # URI.escape doesn't remove single quotes or question marks, if single quote, shell won't run command properly
  path = path.gsub(/'/, '%27')
  # if question mark, url can't be read properly
  path = path.gsub(/\?/, '%3F')
end


create_lessons