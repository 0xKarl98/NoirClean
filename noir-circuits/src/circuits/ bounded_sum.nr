//Sample circuit , main purpose is for writting formal verification 
//for noir circuit 
fn bounded_sum(a: Field, b: Field) -> Field {
    // Ensure inputs are bytes (0-255)
    assert(a >= 0 && a < 256);
    assert(b >= 0 && b < 256);
    
    // Compute sum, but cap at 255 if it would overflow a byte
    let sum = a + b;
    if (sum >= 256) {
        return 255;
    } else {
        return sum;
    }
}

