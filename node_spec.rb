require_relative 'node'

describe Node do
  let(:test_node) { Node.new("data") }
  let(:other_node) { Node.new("linkage") }

  it "instantiates a new object of a type Node with a value" do
    expect(test_node).to be_a Node
    expect(test_node.value).not_to eq("frog")
    expect(test_node.value).to eq("data")
  end

  it "links the object to another node object" do
    expect(test_node.pointer).to be(nil)
    test_node.insert_after(other_node)
    expect(test_node.pointer).to be_a Node
    expect(test_node.pointer.value).to eq("linkage")
  end

  it "removes the linkage" do
    test_node.insert_after(other_node)
    expect(test_node.pointer).to be_a Node
    expect(test_node.pointer.value).to eq("linkage")
    test_node.remove_after
    expect(test_node.pointer).to be(nil)
  end

end
