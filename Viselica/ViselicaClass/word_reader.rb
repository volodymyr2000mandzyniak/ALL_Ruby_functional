class WordReader

  def read_from_file(file_name)
    if File.exists?(file_name)
        f = File.new(file_name, 'r:')
        lines = f.readlines
        f.close
        return lines.sample.chomp
    else
        return nill
    end
  end

end
