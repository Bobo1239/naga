[[block]]
struct type_1 {
    member: i32;
};

[[group(0), binding(0)]]
var<storage, read_write> unnamed: type_1;

fn function_() {
    let e8: i32 = unnamed.member;
    unnamed.member = (e8 + 1);
    return;
}

[[stage(compute), workgroup_size(64, 1, 1)]]
fn main() {
    function_();
}
