load File.expand_path("../../bin/x", __FILE__)

describe X do
    before(:example) do
        FileUtils.mv    "#{PATH}/y", "#{PATH}/y.tmp"
        FileUtils.mv    "#{PATH}/z", "#{PATH}/z.tmp"
        FileUtils.touch "#{PATH}/y"
        FileUtils.touch "#{PATH}/z"
        @x = X.new
    end

    it "adds a task" do
        @x.add "hello, world"
        expect(@x.list).to eq(["0  hello, world"])
        @x.add "goodbye, world"
        expect(@x.list).to eq(["0  hello, world", "1  goodbye, world"])
    end

    it "finishes a task" do
        @x.add "whatever"
        @x.finish 0
        expect(@x.list).to eq([])
    end

    after(:example) do
        FileUtils.rm "#{PATH}/z"
        FileUtils.rm "#{PATH}/y"
        FileUtils.mv "#{PATH}/z.tmp", "#{PATH}/z"
        FileUtils.mv "#{PATH}/y.tmp", "#{PATH}/y"
    end
end
