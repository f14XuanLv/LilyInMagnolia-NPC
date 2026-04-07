def replace_in_file(file_path, old_string, new_string):
    """
    在二进制文件中替换字符串
    
    参数:
        file_path: 要修改的文件路径
        old_string: 要被替换的字符串
        new_string: 新的字符串
    
    返回:
        替换的次数
    """
    # 读取文件内容
    with open(file_path, 'rb') as f:
        content = f.read()
    
    # 确保字符串是字节类型
    if isinstance(old_string, str):
        old_string = old_string.encode()
    if isinstance(new_string, str):
        new_string = new_string.encode()
    
    # 统计替换次数
    count = content.count(old_string)
    print(f"找到 {count} 个待替换的字符串")
    
    # 执行替换
    new_content = content.replace(old_string, new_string)
    
    # 覆盖原文件
    with open(file_path, 'wb') as f:
        f.write(new_content)
    
    print(f"替换完成！共替换 {count} 处")
    
    return count


# 使用示例
if __name__ == "__main__":
    replace_in_file('n7031_Lily-data.skel', 'p0001_Lily', 'n7031_Lily')
    replace_in_file('n7031_Lily-atlas.atlas', 'p0001_Lily', 'n7031_Lily')
