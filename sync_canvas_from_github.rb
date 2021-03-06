def create_lessons
  File.open(@file_path.to_s, 'r') do |f|
    f.each_line do |path|  
      @path = clean_path(path)
      # is there a flag for submission type?
      cmd = "github-to-canvas --create-from-github #{@path} --course #{@course_id} --type #{lesson_type} --name #{lesson_name} -lr --forkable"
      system(cmd)
    end
  end
end

def update_lessons
  File.open(@file_path.to_s, 'r') do |f|
    f.each_line do |path|  
      @path = clean_path(path)
      # is there a flag for submission type?
      cmd = "github-to-canvas --align-from-github #{@path} --course #{@course_id} --id #{lesson_id} --type #{lesson_type} --name #{lesson_name} -lr --forkable"
      system(cmd)
    end
  end
end

def lesson_type
    if @path.downcase.include?('note.md') || @path.downcase.include?('outline.md') || @path.downcase.include?('lecture.md') || @path.downcase.include?('breakout.md')
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
    name = name.gsub(/%27s/, '\ is')
    activity_type = path_parts[-1].sub('.md','')
    name + '\ -\ ' + activity_type
end

def lesson_id
  path_parts = @path.split('/')
  id = path_parts[-3].to_i
  
  # hardcoded demo data
  id = if @path.include?('001')
        'welcome-and-introductions-lecture'
       elsif @path.include?('002')
         'the-dev-workflow-lecture'
       elsif @path.include?('003')
          870
       elsif @path.include?('009')
          860
       else
         nil
       end
end

def clean_path(path)
  path = path.sub(/\n/,'')
  path = URI.escape(path)
  # URI.escape doesn't remove single quotes or question marks, if single quote, shell won't run command properly
  path = path.gsub(/'/, '%27')
  # if question mark, url can't be read properly
  path = path.gsub(/\?/, '%3F')
end

def prompt_user
  # puts "Enter a filename in the current directory that contains a list of github URLs: "
  # @file_path = gets.chomp
  # puts "Enter the course ID (int):"
  # @course_id = gets.chomp
  # puts "Do you want to CREATE or UPDATE (c/u)?"
  # operation = gets.chomp
  
  # for quick tests, uncomment this and comment out above
  @file_path = 'github_filenamesJuly3.txt'
  @course_id = 14
  operation = 'c'

  operation == 'c' ? create_lessons : update_lessons
end

prompt_user