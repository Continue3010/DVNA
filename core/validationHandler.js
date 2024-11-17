module.exports = {
    /**
     * Kiểm tra tính hợp lệ của email.
     * @param {string} email - Địa chỉ email cần kiểm tra.
     * @returns {boolean} True nếu hợp lệ, ngược lại False.
     */
    vEmail: function (email) {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    },

    /**
     * Kiểm tra tính hợp lệ của tên.
     * @param {string} name - Tên cần kiểm tra.
     * @returns {boolean} True nếu hợp lệ, ngược lại False.
     */
    vName: function (name) {
        const nameRegex = /^[a-zA-Z\s]{2,}$/; // Tên chứa ít nhất 2 ký tự chữ cái hoặc khoảng trắng
        return nameRegex.test(name);
    },

    /**
     * Kiểm tra tính hợp lệ của mật khẩu.
     * @param {string} password - Mật khẩu cần kiểm tra.
     * @returns {boolean} True nếu hợp lệ, ngược lại False.
     */
    vPassword: function (password) {
        return typeof password === 'string' && password.length >= 8; // Độ dài >= 8
    },
};
