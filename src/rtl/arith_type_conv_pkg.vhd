library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

package arith_type_conv_pkg is
  -----------------------------------------------------------------------------
  -- Integer Conversions
  -----------------------------------------------------------------------------
  ----------------------------------------
  -- Integer to Signed
  ----------------------------------------
  function int_to_signed(
    int_in          : in integer;
    signed_width_in : in integer
    )
    return signed;

  ----------------------------------------
  -- Integer to Standard Logic Vector
  ----------------------------------------
  function int_to_slv(
    int_in       : in integer;
    slv_width_in : in integer
    )
    return std_logic_vector;

  ----------------------------------------
  -- Integer to Unsigned
  ----------------------------------------
  function int_to_unsigned(
    int_in            : in integer;
    unsigned_width_in : in integer
    )
    return unsigned;

  -----------------------------------------------------------------------------
  -- Standard Logic Vector Conversions
  -----------------------------------------------------------------------------
  ----------------------------------------
  -- Standard Logic Vector to Signed Integer
  ----------------------------------------
  function slv_to_signed_int(
    slv_in : in std_logic_vector
    )
    return integer;

  ----------------------------------------
  -- Standard Logic Vector to Unsigned Integer
  ----------------------------------------
  function slv_to_unsigned_int(
    slv_in : in std_logic_vector
    )
    return integer;

  ----------------------------------------
  -- Standard Logic Vector to Signed
  ----------------------------------------
  function slv_to_signed(
    slv_in : in std_logic_vector
    )
    return signed;

  ----------------------------------------
  -- Standard Logic Vector to Unsigned
  ----------------------------------------
  function slv_to_unsigned(
    slv_in : in std_logic_vector
    )
    return unsigned;

  -----------------------------------------------------------------------------
  -- Signed Conversions
  -----------------------------------------------------------------------------
  ----------------------------------------
  -- Signed to Integer
  ----------------------------------------
  function signed_to_int(
    signed_in : in signed
    )
    return integer;

  ----------------------------------------
  -- Signed to Standard Logic Vector
  ----------------------------------------
  function signed_to_slv(
    signed_in : in signed
    )
    return std_logic_vector;

  ----------------------------------------
  -- Signed to Unsigned
  ----------------------------------------
  function signed_to_unsigned(
    signed_in : in signed
    )
    return unsigned;

  -----------------------------------------------------------------------------
  -- Unsigned Conversions
  -----------------------------------------------------------------------------
  ----------------------------------------
  -- Unsigned to Integer
  ----------------------------------------
  function unsigned_to_int(
    unsigned_in : in unsigned
    )
    return integer;

  ----------------------------------------
  -- Unsigned to Signed
  ----------------------------------------
  function unsigned_to_signed(
    unsigned_in : in unsigned
    )
    return signed;

  ----------------------------------------
  -- Unsigned to Standard Logic Vector
  ----------------------------------------
  function unsigned_to_slv(
    unsigned_in : in unsigned
    )
    return std_logic_vector;

end package;

package body arith_type_conv_pkg is
  -----------------------------------------------------------------------------
  -- Integer Conversions
  -----------------------------------------------------------------------------
  ----------------------------------------
  -- Integer to Signed
  ----------------------------------------
  function int_to_signed(
    int_in          : in integer;
    signed_width_in : in integer
    )
    return signed is
  begin
    return conv_signed(int_in, signed_width_in);
  end;

  ----------------------------------------
  -- Integer to Standard Logic Vector
  ----------------------------------------
  function int_to_slv(
    int_in       : in integer;
    slv_width_in : in integer
    )
    return std_logic_vector is
  begin
    return conv_std_logic_vector(int_in, slv_width_in);
  end;

  ----------------------------------------
  -- Integer to Unsigned
  ----------------------------------------
  function int_to_unsigned(
    int_in            : in integer;
    unsigned_width_in : in integer
    )
    return unsigned is
  begin
    return conv_unsigned(int_in, unsigned_width_in);
  end;

  -----------------------------------------------------------------------------
  -- Standard Logic Vector Conversions
  -----------------------------------------------------------------------------
  ----------------------------------------
  -- Standard Logic Vector to Signed Integer
  ----------------------------------------
  function slv_to_signed_int(
    slv_in : in std_logic_vector
    )
    return integer is
  begin
    return conv_integer(signed(slv_in));
  end;

  ----------------------------------------
  -- Standard Logic Vector to Unsigned Integer
  ----------------------------------------
  function slv_to_unsigned_int(
    slv_in : in std_logic_vector
    )
    return integer is
  begin
    return conv_integer(unsigned(slv_in));
  end;

  ----------------------------------------
  -- Standard Logic Vector to Signed
  ----------------------------------------
  function slv_to_signed(
    slv_in : in std_logic_vector
    )
    return signed is
  begin
    return signed(slv_in);
  end;

  ----------------------------------------
  -- Standard Logic Vector to Unsigned
  ----------------------------------------
  function slv_to_unsigned(
    slv_in : in std_logic_vector
    )
    return unsigned is
  begin
    return unsigned(slv_in);
  end;

  -----------------------------------------------------------------------------
  -- Signed Conversions
  -----------------------------------------------------------------------------
  ----------------------------------------
  -- Signed to Integer
  ----------------------------------------
  function signed_to_int(
    signed_in : in signed
    )
    return integer is
  begin
    return conv_integer(signed_in);
  end;

  ----------------------------------------
  -- Signed to Standard Logic Vector
  ----------------------------------------
  function signed_to_slv(
    signed_in : in signed
    )
    return std_logic_vector is
  begin
    return std_logic_vector(signed_in);
  end;

  ----------------------------------------
  -- Signed to Unsigned
  ----------------------------------------
  function signed_to_unsigned(
    signed_in : in signed
    )
    return unsigned is
  begin
    return unsigned(signed_in);
  end;

  -----------------------------------------------------------------------------
  -- Unsigned Conversions
  -----------------------------------------------------------------------------
  ----------------------------------------
  -- Unsigned to Integer
  ----------------------------------------
  function unsigned_to_int(
    unsigned_in : in unsigned
    )
    return integer is
  begin
    return conv_integer(unsigned_in);
  end;

  ----------------------------------------
  -- Unsigned to Signed
  ----------------------------------------
  function unsigned_to_signed(
    unsigned_in : in unsigned
    )
    return signed is
  begin
    return signed(unsigned_in);
  end;

  ----------------------------------------
  -- Unsigned to Standard Logic Vector
  ----------------------------------------
  function unsigned_to_slv(
    unsigned_in : in unsigned
    )
    return std_logic_vector is
  begin
    return std_logic_vector(unsigned_in);
  end;

end package body arith_type_conv_pkg;
